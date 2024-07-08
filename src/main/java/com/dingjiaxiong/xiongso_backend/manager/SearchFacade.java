package com.dingjiaxiong.xiongso_backend.manager;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.dingjiaxiong.xiongso_backend.common.ErrorCode;
import com.dingjiaxiong.xiongso_backend.common.ResultUtils;
import com.dingjiaxiong.xiongso_backend.datasource.*;
import com.dingjiaxiong.xiongso_backend.exception.BusinessException;
import com.dingjiaxiong.xiongso_backend.exception.ThrowUtils;
import com.dingjiaxiong.xiongso_backend.model.dto.post.PostQueryRequest;
import com.dingjiaxiong.xiongso_backend.model.dto.search.SearchRequest;
import com.dingjiaxiong.xiongso_backend.model.dto.user.UserQueryRequest;
import com.dingjiaxiong.xiongso_backend.model.entity.Picture;
import com.dingjiaxiong.xiongso_backend.model.enums.SearchTypeEnum;
import com.dingjiaxiong.xiongso_backend.model.vo.PostVO;
import com.dingjiaxiong.xiongso_backend.model.vo.SearchVO;
import com.dingjiaxiong.xiongso_backend.model.vo.UserVO;
import com.dingjiaxiong.xiongso_backend.service.PictureService;
import com.dingjiaxiong.xiongso_backend.service.PostService;
import com.dingjiaxiong.xiongso_backend.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;

/**
 * 搜索门面
 *
 * @author Ding Jiaxiong
 */
@Component
@Slf4j
public class SearchFacade {

    @Resource
    private PostDataSource postDataSource;

    @Resource
    private UserDataSource userDataSource;

    @Resource
    private PictureDataSource pictureDataSource;

    @Resource
    private DataSourceRegistry dataSourceRegistry;


    public SearchVO searchAll(@RequestBody SearchRequest searchRequest, HttpServletRequest request) throws ExecutionException, InterruptedException {

        String searchText = searchRequest.getSearchText();

        String type = searchRequest.getType();
        SearchTypeEnum searchTypeEnum = SearchTypeEnum.getEnumByValue(type);

        ThrowUtils.throwIf(StringUtils.isBlank(type), ErrorCode.PARAMS_ERROR);

        long current = searchRequest.getCurrent();
        long pageSize = searchRequest.getPageSize();

        // 查出所有数据
        if (searchTypeEnum == null) {

            CompletableFuture<Page<UserVO>> userTask = CompletableFuture.supplyAsync(() -> {
                UserQueryRequest userQueryRequest = new UserQueryRequest();
                userQueryRequest.setUserName(searchText);
                Page<UserVO> userVOPage = userDataSource.doSearch(searchText, current, pageSize);
                return userVOPage;
            });

            CompletableFuture<Page<PostVO>> postTask = CompletableFuture.supplyAsync(() -> {
                PostQueryRequest postQueryRequest = new PostQueryRequest();
                postQueryRequest.setSearchText(searchText);
                Page<PostVO> postVOPage = postDataSource.doSearch(searchText, current, pageSize);
                return postVOPage;
            });

            CompletableFuture<Page<Picture>> pictureTask = CompletableFuture.supplyAsync(() -> {
                Page<Picture> picturePage = pictureDataSource.doSearch(searchText, current, pageSize);
                return picturePage;
            });

            CompletableFuture.allOf(userTask, postTask, pictureTask).join();
            // 拿到任务返回值
            Page<UserVO> userVOPage = userTask.get();
            Page<PostVO> postVOPage = postTask.get();
            Page<Picture> picturePage = pictureTask.get();


            // 返回结果
            SearchVO searchVO = new SearchVO();
            searchVO.setUserList(userVOPage.getRecords());
            searchVO.setPostList(postVOPage.getRecords());
            searchVO.setPictureList(picturePage.getRecords());

            return searchVO;

        } else {

            // 返回结果
            SearchVO searchVO = new SearchVO();

            DataSource dataSourceByType = dataSourceRegistry.getDataSourceByType(type);


//            DataSource dataSource = null;
//
//            switch (searchTypeEnum) {
//                case POST:
//                    dataSource = new PostDataSource();
//                    break;
//                case USER:
//                    dataSource = new UserDataSource();
//                    break;
//                case PICTURE:
//                    dataSource = new PictureDataSource();
//                    break;
//                default:
//
//            }

            Page<?> page = dataSourceByType.doSearch(searchText, current, pageSize);
            searchVO.setDataList(page.getRecords());

//            switch (searchTypeEnum) {
//                case POST:
//                    PostQueryRequest postQueryRequest = new PostQueryRequest();
//                    postQueryRequest.setSearchText(searchText);
//                    Page<PostVO> postVOPage = postDataSource.doSearch(searchText, current, pageSize);
//                    searchVO.setPostList(postVOPage.getRecords());
//                    break;
//                case USER:
//                    UserQueryRequest userQueryRequest = new UserQueryRequest();
//                    userQueryRequest.setUserName(searchText);
//                    Page<UserVO> userVOPage = userDataSource.doSearch(searchText, current, pageSize);
//                    searchVO.setUserList(userVOPage.getRecords());
//                    break;
//                case PICTURE:
//                    Page<Picture> picturePage = pictureDataSource.doSearch(searchText, current, pageSize);
//                    searchVO.setPictureList(picturePage.getRecords());
//                    break;
//                default:
//            }


            return searchVO;
        }

    }
}
