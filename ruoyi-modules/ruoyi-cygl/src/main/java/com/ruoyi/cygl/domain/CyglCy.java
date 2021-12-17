package com.ruoyi.cygl.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.annotation.Excel;
import com.ruoyi.common.core.web.domain.BaseEntity;

import java.util.Date;

/**
 * 产业管理对象 cygl_cy
 *
 * @author ljw17
 * @date 2021-12-08
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class CyglCy {
    private static final long serialVersionUID = 1L;

    /**
     * 产业ID
     */
    private Long cyId;

    /**
     * 产业名称
     */
    @Excel(name = "产业名称")
    private String cyName;

    /**
     * 产业方向
     */
    @Excel(name = "产业方向")
    private String cyDirection;

    /**
     * 创建者
     */
    private String createBy;

    /**
     * 创建时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    /**
     * 更新者
     */
    private String updateBy;

    /**
     * 更新时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date updateTime;

    /**
     * 是否删除
     **/
    private Integer isDeleted;

    /**
     * 产业数
     */
    private Integer cyNum;

}
