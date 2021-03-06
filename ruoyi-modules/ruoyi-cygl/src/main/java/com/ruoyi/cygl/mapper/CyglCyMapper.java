package com.ruoyi.cygl.mapper;

import java.util.List;

import com.ruoyi.cygl.domain.CyglCy;
import org.apache.ibatis.annotations.Mapper;

/**
 * 产业管理Mapper接口
 *
 * @author ljw17
 * @date 2021-12-08
 */
@Mapper
public interface CyglCyMapper {
    /**
     * 查询产业管理
     *
     * @param cyId 产业管理主键
     * @return 产业管理
     */
    public CyglCy selectCyglCyByCyId(Long cyId);

    /**
     * 查询产业管理列表
     *
     * @param cyglCy 产业管理
     * @return 产业管理集合
     */
    public List<CyglCy> selectCyglCyList(CyglCy cyglCy);

    /**
     * 新增产业管理
     *
     * @param cyglCy 产业管理
     * @return 结果
     */
    public int insertCyglCy(CyglCy cyglCy);

    /**
     * 修改产业管理
     *
     * @param cyglCy 产业管理
     * @return 结果
     */
    public int updateCyglCy(CyglCy cyglCy);

    /**
     * 删除产业管理
     *
     * @param cyId 产业管理主键
     * @return 结果
     */
    public int deleteCyglCyByCyId(Long cyId);

    /**
     * 批量删除产业管理
     *
     * @param cyIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCyglCyByCyIds(Long[] cyIds);

    /**
     * 全部产业信息
     *
     * @return
     */
    public List<CyglCy> getCyList();

    /**
     * 产业分布
     *
     * @return
     */
    public List<CyglCy> selectCyDistribute();
}
