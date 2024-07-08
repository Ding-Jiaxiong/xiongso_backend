package com.dingjiaxiong.xiongso_backend.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.dingjiaxiong.xiongso_backend.common.BaseResponse;
import com.dingjiaxiong.xiongso_backend.common.ErrorCode;
import com.dingjiaxiong.xiongso_backend.common.ResultUtils;
import com.dingjiaxiong.xiongso_backend.exception.ThrowUtils;
import com.dingjiaxiong.xiongso_backend.model.dto.picture.PictureQueryRequest;
import com.dingjiaxiong.xiongso_backend.model.entity.Picture;
import com.dingjiaxiong.xiongso_backend.service.PictureService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 图片接口
 *
 * @author Ding Jiaxiong
 */

@RestController
@RequestMapping("/picture")
@Slf4j
public class PictureController {

    @Resource
    private PictureService pictureService;

    /**
     * 分页获取列表（封装类）
     *
     * @param pictureQueryRequest
     * @param request
     * @return
     */
    @PostMapping("/list/page/vo")
    public BaseResponse<Page<Picture>> listPictureByPage(@RequestBody PictureQueryRequest pictureQueryRequest,
                                                         HttpServletRequest request) {
        long current = pictureQueryRequest.getCurrent();
        long size = pictureQueryRequest.getPageSize();
        // 限制爬虫
        ThrowUtils.throwIf(size > 20, ErrorCode.PARAMS_ERROR);
        String searchText = pictureQueryRequest.getSearchText();
        Page<Picture> picturePage = pictureService.searchPicture(searchText, current, size);
        return ResultUtils.success(picturePage);
    }


}
