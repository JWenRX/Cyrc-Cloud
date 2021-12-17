package com.ruoyi.qygl.service.impl;

import java.util.List;

import com.ruoyi.common.core.utils.DateUtils;
import com.ruoyi.common.core.utils.UUIDUtils;
import com.ruoyi.common.security.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.qygl.mapper.QyglMapper;
import com.ruoyi.qygl.domain.Qygl;
import com.ruoyi.qygl.service.IQyglService;

/**
 * 企业管理Service业务层处理
 *
 * @author ljw17
 * @date 2021-12-09
 */
@Service
public class QyglServiceImpl implements IQyglService {
    @Autowired
    private QyglMapper qyglMapper;

    /**
     * 查询企业管理
     *
     * @param qyId 企业管理主键
     * @return 企业管理
     */
    @Override
    public Qygl selectQyglByQyId(Long qyId) {
        return qyglMapper.selectQyglByQyId(qyId);
    }

    /**
     * 查询企业管理列表
     *
     * @param qygl 企业管理
     * @return 企业管理
     */
    @Override
    public List<Qygl> selectQyglList(Qygl qygl) {
        return qyglMapper.selectQyglList(qygl);
    }

    /**
     * 新增企业管理
     *
     * @param qygl 企业管理
     * @return 结果
     */
    @Override
    public int insertQygl(Qygl qygl) {
        qygl.setCreateTime(DateUtils.getNowDate());
        qygl.setCreateBy(SecurityUtils.getUsername());
        qygl.setQyId(UUIDUtils.getUUIDInOrderId().longValue());
        return qyglMapper.insertQygl(qygl);
    }

    /**
     * 修改企业管理
     *
     * @param qygl 企业管理
     * @return 结果
     */
    @Override
    public int updateQygl(Qygl qygl) {
        qygl.setUpdateTime(DateUtils.getNowDate());
        qygl.setUpdateBy(SecurityUtils.getUsername());
        return qyglMapper.updateQygl(qygl);
    }

    /**
     * 批量删除企业管理
     *
     * @param qyIds 需要删除的企业管理主键
     * @return 结果
     */
    @Override
    public int deleteQyglByQyIds(Long[] qyIds) {
        return qyglMapper.deleteQyglByQyIds(qyIds);
    }

    /**
     * 删除企业管理信息
     *
     * @param qyId 企业管理主键
     * @return 结果
     */
    @Override
    public int deleteQyglByQyId(Long qyId) {
        return qyglMapper.deleteQyglByQyId(qyId);
    }

    /**
     * 获取企业列表
     *
     * @return
     */
    @Override
    public List<Qygl> getQyList() {
        return qyglMapper.getQyList();
    }

    /**
     * 企业发展情况
     *
     * @return
     */
    @Override
    public List<Qygl> selectCyDevelop() {
        return qyglMapper.selectCyDevelop();
    }

    /**
     * 产业方向
     *
     * @param qy
     * @return
     */
    @Override
    public String selectCyDirection(Long qy) {
        String cyDirection = qyglMapper.selectCyDirection(qy);
        return cyDirection;
    }
}
