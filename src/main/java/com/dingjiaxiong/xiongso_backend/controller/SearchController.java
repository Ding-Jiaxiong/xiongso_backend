package com.dingjiaxiong.xiongso_backend.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.dingjiaxiong.xiongso_backend.common.BaseResponse;
import com.dingjiaxiong.xiongso_backend.common.ErrorCode;
import com.dingjiaxiong.xiongso_backend.common.ResultUtils;
import com.dingjiaxiong.xiongso_backend.exception.ThrowUtils;
import com.dingjiaxiong.xiongso_backend.manager.SearchFacade;
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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;

/**
 * 聚合搜索接口
 *
 * @author Ding Jiaxiong
 */
@RestController
@RequestMapping("/search")
@Slf4j
public class SearchController {

//    @Resource
//    private UserService userService;
//
//    @Resource
//    private PostService postService;
//
//    @Resource
//    private PictureService pictureService;

    @Resource
    private SearchFacade searchFacade;


    @PostMapping("/all")
    public BaseResponse<SearchVO> searchAll(@RequestBody SearchRequest searchRequest, HttpServletRequest request) throws ExecutionException, InterruptedException {

        return ResultUtils.success(searchFacade.searchAll(searchRequest, request));


        // 图片
//        Page<Picture> picturePage = pictureService.searchPicture(searchText, 1, 10);

        //        // 用户
//        UserQueryRequest userQueryRequest = new UserQueryRequest();
//        userQueryRequest.setUserName(searchText);
//        Page<UserVO> userVOPage = userService.listUserVOByPage(userQueryRequest);
//
//        // 文章
//        PostQueryRequest postQueryRequest = new PostQueryRequest();
//        postQueryRequest.setSearchText(searchText);
//        Page<PostVO> postVOPage = postService.listPostVOByPage(postQueryRequest, request);
//
//


    }

}
