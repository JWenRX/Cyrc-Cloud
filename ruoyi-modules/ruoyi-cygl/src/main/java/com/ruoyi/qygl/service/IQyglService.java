package com.ruoyi.qygl.service;

import java.util.List;

import com.ruoyi.cygl.domain.CyglCy;
import com.ruoyi.qygl.domain.Qygl;

/**
 * 企业管理Service接口
 *
 * @author ljw17
 * @date 2021-12-09
 */
public interface IQyglService {
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
     * 批量删除企业管理
     *
     * @param qyIds 需要删除的企业管理主键集合
     * @return 结果
     */
    public int deleteQyglByQyIds(Long[] qyIds);

    /**
     * 删除企业管理信息
     *
     * @param qyId 企业管理主键
     * @return 结果
     */
    public int deleteQyglByQyId(Long qyId);

    /**
     * 获取企业列表
     *
     * @return
     */
    public List<Qygl> getQyList();

    /**
     * 企业发展情况
     *
     * @return
     */
    List<Qygl> selectCyDevelop();
}
