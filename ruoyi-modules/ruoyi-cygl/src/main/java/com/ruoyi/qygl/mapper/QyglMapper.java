package com.ruoyi.qygl.mapper;

import java.util.List;

import com.ruoyi.qygl.domain.Qygl;
import org.apache.ibatis.annotations.Mapper;

/**
 * 企业管理Mapper接口
 *
 * @author ljw17
 * @date 2021-12-09
 */
@Mapper
public interface QyglMapper {
    /**
     * 查询企业管理
     *
     * @param qyId 企业管理主键
     * @return 企业管理
     */
    public Qygl selectQyglByQyId(Long qyId);

    /**
     * 查询企业管理列表
     *
     * @param qygl 企业管理
     * @return 企业管理集合
     */
    public List<Qygl> selectQyglList(Qygl qygl);

    /**
     * 新增企业管理
     *
     * @param qygl 企业管理
     * @return 结果
     */
    public int insertQygl(Qygl qygl);

    /**
     * 修改企业管理
     *
     * @param qygl 企业管理
     * @return 结果
     */
    public int updateQygl(Qygl qygl);

    /**
     * 删除企业管理
     *
     * @param qyId 企业管理主键
     * @return 结果
     */
    public int deleteQyglByQyId(Long qyId);

    /**
     * 批量删除企业管理
     *
     * @param qyIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteQyglByQyIds(Long[] qyIds);

    /**
     * 获取企业列表
     *
     * @return
     */
    public List<Qygl> getQyList();
}
