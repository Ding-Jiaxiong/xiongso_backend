package com.dingjiaxiong.xiongso_backend.datasource;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.dingjiaxiong.xiongso_backend.model.dto.user.UserQueryRequest;
import com.dingjiaxiong.xiongso_backend.model.vo.UserVO;
import com.dingjiaxiong.xiongso_backend.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 用户服务实现
 *
 * @author Ding Jiaxiong
 */
@Service
@Slf4j
public class UserDataSource implements DataSource<UserVO> {

    @Resource
    private UserService userService;

    @Override
    public Page<UserVO> doSearch(String searchText, long pageNum, long pageSize) {
        UserQueryRequest userQueryRequest = new UserQueryRequest();
        userQueryRequest.setUserName(searchText);
        userQueryRequest.setCurrent(pageNum);
        userQueryRequest.setPageSize(pageSize);
        Page<UserVO> userVOPage = userService.listUserVOByPage(userQueryRequest);
        return userVOPage;
    }
}
