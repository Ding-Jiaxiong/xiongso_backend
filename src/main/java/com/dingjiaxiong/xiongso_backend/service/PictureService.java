package com.dingjiaxiong.xiongso_backend.service;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.dingjiaxiong.xiongso_backend.model.entity.Picture;

/**
 * 图片服务
 *
 * @author Ding Jiaxiong
 */

public interface PictureService {

    Page<Picture> searchPicture(String searchText, long pageNum, long pageSize);
}
