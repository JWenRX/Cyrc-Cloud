package com.ruoyi.rcgl.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import com.ruoyi.common.core.annotation.Excel;

import java.util.Date;

/**
 * 人才管理对象 rcgl_rc
 *
 * @author ljw17
 * @date 2021-12-07
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class RcglRc {
    private static final long serialVersionUID = 1L;

    /**
     * 人才ID
     */
    private Long rcId;

    /**
     * 所属机构
     */
    @Excel(name = "所属机构")
    private String rcCompany;

    /**
     * 所在区域
     */
    @Excel(name = "区域")
    private String rcAreas;

    /**
     * 姓名
     */
    @Excel(name = "姓名")
    private String rcName;

    /**
     * 研究方向
     */
    @Excel(name = "研究方向")
    private String rcResearchField;

    /**
     * 论文数
     */
    @Excel(name = "论文数")
    private Long rcPaperNum;

    /**
     * 专利数
     */
    @Excel(name = "专利数")
    private Long rcPatentNum;

    /**
     * 项目数
     */
    @Excel(name = "项目数")
    private Long rcProjectNum;

    /**
     * 活跃度
     */
    @Excel(name = "活跃度")
    private Double rcActivation;

    /**
     * 创建者
     */
    private Long createBy;

    /**
     * 创建时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    /**
     * 更新者
     */
    private Long updateBy;

    /**
     * 更新时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date updateTime;

    /**
     * 是否删除
     **/
    private Integer isDeleted;

}
