package com.ruoyi.qygl.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.cygl.domain.CyglCy;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import com.ruoyi.common.core.annotation.Excel;

import java.util.Date;

/**
 * 企业管理对象 qygl
 *
 * @author ljw17
 * @date 2021-12-09
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Qygl {
    private static final long serialVersionUID = 1L;

    /**
     * 企业id
     */
    private Long qyId;

    /**
     * 企业名称
     */
    @Excel(name = "企业名称")
    private String qyName;

    /**
     * 所在产业
     */
    private Long qyIndustry;

    /**
     * 所在产业
     */
    @Excel(name = "所在产业")
    private String cyName;

    /**
     * 企业所在城市
     */
    @Excel(name = "企业所在城市")
    private String qyAreas;

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
     * 产业
     */
    private CyglCy cy;

    /**
     * 企业数量
     */
    private Integer qyNum;

}
