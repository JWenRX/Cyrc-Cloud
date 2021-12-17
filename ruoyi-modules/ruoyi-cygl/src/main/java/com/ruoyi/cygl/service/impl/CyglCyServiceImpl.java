package com.ruoyi.cygl.service.impl;

import java.util.List;

import com.ruoyi.common.core.utils.DateUtils;
import com.ruoyi.common.core.utils.UUIDUtils;
import com.ruoyi.common.security.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.cygl.mapper.CyglCyMapper;
import com.ruoyi.cygl.domain.CyglCy;
import com.ruoyi.cygl.service.ICyglCyService;

/**
 * 产业管理Service业务层处理
 *
 * @author ljw17
 * @date 2021-12-08
 */
@Service
public class CyglCyServiceImpl implements ICyglCyService {
    @Autowired
    private CyglCyMapper cyglCyMapper;

    /**
     * 查询产业管理
     *
     * @param cyId 产业管理主键
     * @return 产业管理
     */
    @Override
    public CyglCy selectCyglCyByCyId(Long cyId) {
        return cyglCyMapper.selectCyglCyByCyId(cyId);
    }

    /**
     * 查询产业管理列表
     *
     * @param cyglCy 产业管理
     * @return 产业管理
     */
    @Override
    public List<CyglCy> selectCyglCyList(CyglCy cyglCy) {
        return cyglCyMapper.selectCyglCyList(cyglCy);
    }

    /**
     * 新增产业管理
     *
     * @param cyglCy 产业管理
     * @return 结果
     */
    @Override
    public int insertCyglCy(CyglCy cyglCy) {
        cyglCy.setCreateBy(SecurityUtils.getUsername());
        cyglCy.setCyId(UUIDUtils.getUUIDInOrderId().longValue());
        cyglCy.setCreateTime(DateUtils.getNowDate());
        return cyglCyMapper.insertCyglCy(cyglCy);
    }

    /**
     * 修改产业管理
     *
     * @param cyglCy 产业管理
     * @return 结果
     */
    @Override
    public int updateCyglCy(CyglCy cyglCy) {
        cyglCy.setUpdateTime(DateUtils.getNowDate());
        cyglCy.setUpdateBy(SecurityUtils.getUsername());
        return cyglCyMapper.updateCyglCy(cyglCy);
    }

    /**
     * 批量删除产业管理
     *
     * @param cyIds 需要删除的产业管理主键
     * @return 结果
     */
    @Override
    public int deleteCyglCyByCyIds(Long[] cyIds) {
        return cyglCyMapper.deleteCyglCyByCyIds(cyIds);
    }

    /**
     * 删除产业管理信息
     *
     * @param cyId 产业管理主键
     * @return 结果
     */
    @Override
    public int deleteCyglCyByCyId(Long cyId) {
        return cyglCyMapper.deleteCyglCyByCyId(cyId);
    }

    /**
     * 获取产业信息
     *
     * @return
     */
    @Override
    public List<CyglCy> getCyList() {
        return cyglCyMapper.getCyList();
    }

    /**
     * 产业分布
     *
     * @return
     */
    @Override
    public List<CyglCy> selectCyDistribute() {
        List<CyglCy> cyList = cyglCyMapper.selectCyDistribute();
        return cyList;
    }
}
