package com.dingjiaxiong.xiongso_backend.model.vo;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.dingjiaxiong.xiongso_backend.model.entity.Picture;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * 聚合搜索
 *
 * @author Ding Jiaxiong
 */
@Data
public class SearchVO implements Serializable {

    private List<UserVO> userList;

    private List<PostVO> postList;

    private List<Picture> pictureList;

    private List<?> dataList;

    private static final long serialVersionUID = 1L;

}
