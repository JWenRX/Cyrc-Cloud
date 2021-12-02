package com.ruoyi.rcgl.service;

import java.util.List;

import com.ruoyi.rcgl.domain.RcglRc;

/**
 * 人才管理Service接口
 *
 * @author ljw17
 * @date 2021-12-07
 */
public interface IRcglRcService {
    /**
     * 查询人才
     *
     * @param rcId 人才主键
     * @return 人才
     */
    public RcglRc selectRcglRcByRcId(Long rcId);

    /**
     * 查询人才列表
     *
     * @param rcglRc 人才
     * @return 人才集合
     */
    public List<RcglRc> selectRcglRcList(RcglRc rcglRc);

    /**
     * 新增人才
     *
     * @param rcglRc 人才
     * @return 结果
     */
    public int insertRcglRc(RcglRc rcglRc);

    /**
     * 修改人才
     *
     * @param rcglRc 人才
     * @return 结果
     */
    public int updateRcglRc(RcglRc rcglRc);

    /**
     * 批量删除人才
     *
     * @param rcIds 需要删除的人才主键集合
     * @return 结果
     */
    public int deleteRcglRcByRcIds(Long[] rcIds);

    /**
     * 删除人才信息
     *
     * @param rcId 人才主键
     * @return 结果
     */
    public int deleteRcglRcByRcId(Long rcId);
}
