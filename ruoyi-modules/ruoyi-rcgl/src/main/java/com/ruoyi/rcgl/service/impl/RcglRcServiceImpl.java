package com.ruoyi.rcgl.service.impl;

import java.util.List;

import com.ruoyi.common.core.utils.DateUtils;
import com.ruoyi.common.core.utils.UUIDUtils;
import com.ruoyi.common.security.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.rcgl.mapper.RcglRcMapper;
import com.ruoyi.rcgl.domain.RcglRc;
import com.ruoyi.rcgl.service.IRcglRcService;

/**
 * 人才管理Service业务层处理
 *
 * @author ljw17
 * @date 2021-12-07
 */
@Service
public class RcglRcServiceImpl implements IRcglRcService {
    @Autowired
    private RcglRcMapper rcglRcMapper;

    /**
     * 查询人才
     *
     * @param rcId 人才主键
     * @return 才
     */
    @Override
    public RcglRc selectRcglRcByRcId(Long rcId) {
        return rcglRcMapper.selectRcglRcByRcId(rcId);
    }

    /**
     * 查询人才列表
     *
     * @param rcglRc 人才
     * @return 人才
     */
    @Override
    public List<RcglRc> selectRcglRcList(RcglRc rcglRc) {
        return rcglRcMapper.selectRcglRcList(rcglRc);
    }

    /**
     * 新增人才
     *
     * @param rcglRc 人才
     * @return 结果
     */
    @Override
    public int insertRcglRc(RcglRc rcglRc) {
        rcglRc.setCreateTime(DateUtils.getNowDate());
        rcglRc.setRcId(UUIDUtils.getUUIDInOrderId().longValue());
        rcglRc.setCreateBy(SecurityUtils.getUsername());
        return rcglRcMapper.insertRcglRc(rcglRc);
    }

    /**
     * 修改人才
     *
     * @param rcglRc 人才
     * @return 结果
     */
    @Override
    public int updateRcglRc(RcglRc rcglRc) {
        rcglRc.setUpdateTime(DateUtils.getNowDate());
        rcglRc.setUpdateBy(SecurityUtils.getUsername());
        return rcglRcMapper.updateRcglRc(rcglRc);
    }

    /**
     * 批量删除人才
     *
     * @param rcIds 需要删除的人才主键
     * @return 结果
     */
    @Override
    public int deleteRcglRcByRcIds(Long[] rcIds) {
        return rcglRcMapper.deleteRcglRcByRcIds(rcIds);
    }

    /**
     * 删除人才信息
     *
     * @param rcId 人才主键
     * @return 结果
     */
    @Override
    public int deleteRcglRcByRcId(Long rcId) {
        return rcglRcMapper.deleteRcglRcByRcId(rcId);
    }

    /**
     * 高级人才分布
     *
     * @return
     */
    @Override
    public List<RcglRc> selectRcDistribute() {
        return rcglRcMapper.selectRcDistribute();
    }

    /**
     * 人才领域分布
     * @return
     */
    @Override
    public List<RcglRc> selectRcDirection() {
        return rcglRcMapper.selectRcDirection();
    }
}
