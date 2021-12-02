package com.ruoyi.rcgl.mapper;

import java.util.List;

import com.ruoyi.rcgl.domain.RcglRc;
import org.apache.ibatis.annotations.Mapper;

/**
 * 人才管理Mapper接口
 *
 * @author ljw17
 * @date 2021-12-07
 */
@Mapper
public interface RcglRcMapper {
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
     * 删除人才
     *
     * @param rcId 人才主键
     * @return 结果
     */
    public int deleteRcglRcByRcId(Long rcId);

    /**
     * 批量删除人才
     *
     * @param rcIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteRcglRcByRcIds(Long[] rcIds);
}
