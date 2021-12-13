package com.ruoyi.cygl.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.log.annotation.Log;
import com.ruoyi.common.log.enums.BusinessType;
import com.ruoyi.common.security.annotation.RequiresPermissions;
import com.ruoyi.cygl.domain.CyglCy;
import com.ruoyi.cygl.service.ICyglCyService;
import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.core.utils.poi.ExcelUtil;
import com.ruoyi.common.core.web.page.TableDataInfo;

/**
 * 产业管理Controller
 * 
 * @author ljw17
 * @date 2021-12-08
 */
@RestController
@RequestMapping("/cy")
public class CyglCyController extends BaseController
{
    @Autowired
    private ICyglCyService cyglCyService;

    /**
     * 查询产业管理列表
     */
    @RequiresPermissions("cygl:cy:list")
    @GetMapping("/list")
    public TableDataInfo list(CyglCy cyglCy)
    {
        startPage();
        List<CyglCy> list = cyglCyService.selectCyglCyList(cyglCy);
        return getDataTable(list);
    }

    /**
     * 导出产业管理列表
     */
    @RequiresPermissions("cygl:cy:export")
    @Log(title = "产业管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, CyglCy cyglCy)
    {
        List<CyglCy> list = cyglCyService.selectCyglCyList(cyglCy);
        ExcelUtil<CyglCy> util = new ExcelUtil<CyglCy>(CyglCy.class);
        util.exportExcel(response, list, "产业管理数据");
    }

    /**
     * 获取产业管理详细信息
     */
    @RequiresPermissions("cygl:cy:query")
    @GetMapping(value = "/{cyId}")
    public AjaxResult getInfo(@PathVariable("cyId") Long cyId)
    {
        return AjaxResult.success(cyglCyService.selectCyglCyByCyId(cyId));
    }

    /**
     * 新增产业管理
     */
    @RequiresPermissions("cygl:cy:add")
    @Log(title = "产业管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CyglCy cyglCy)
    {
        return toAjax(cyglCyService.insertCyglCy(cyglCy));
    }

    /**
     * 修改产业管理
     */
    @RequiresPermissions("cygl:cy:edit")
    @Log(title = "产业管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CyglCy cyglCy)
    {
        return toAjax(cyglCyService.updateCyglCy(cyglCy));
    }

    /**
     * 删除产业管理
     */
    @RequiresPermissions("cygl:cy:remove")
    @Log(title = "产业管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{cyIds}")
    public AjaxResult remove(@PathVariable Long[] cyIds)
    {
        return toAjax(cyglCyService.deleteCyglCyByCyIds(cyIds));
    }

    @RequestMapping("/cyDistribute")
    public List<CyglCy> selectCyDistribute(){
        List<CyglCy> cyList = cyglCyService.selectCyDistribute();
        System.out.println(cyList);
        return cyList;
    }
}
