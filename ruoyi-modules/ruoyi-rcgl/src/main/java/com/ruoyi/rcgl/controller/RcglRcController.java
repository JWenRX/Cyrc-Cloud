package com.ruoyi.rcgl.controller;

import java.util.List;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.rcgl.model.Qygl;
import com.ruoyi.rcgl.service.RemoteQyglService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.common.log.annotation.Log;
import com.ruoyi.common.log.enums.BusinessType;
import com.ruoyi.common.security.annotation.RequiresPermissions;
import com.ruoyi.rcgl.domain.RcglRc;
import com.ruoyi.rcgl.service.IRcglRcService;
import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.core.utils.poi.ExcelUtil;
import com.ruoyi.common.core.web.page.TableDataInfo;

/**
 * 【请填写功能名称】Controller
 *
 * @author ruoyi
 * @date 2021-12-07
 */
@RestController
@RequestMapping("/rc")
public class RcglRcController extends BaseController {
    @Autowired
    private IRcglRcService rcglRcService;

    @Autowired
    private RemoteQyglService remoteQyglService;

    /**
     * 查询人才列表
     */
    @RequiresPermissions("rcgl:rc:list")
    @GetMapping("/list")
    public TableDataInfo list(RcglRc rcglRc) {
        startPage();
        List<RcglRc> list = rcglRcService.selectRcglRcList(rcglRc);
        return getDataTable(list);
    }

    /**
     * 导出人才列表
     */
    @RequiresPermissions("rcgl:rc:export")
    @Log(title = "导出人才信息表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, RcglRc rcglRc) {
        List<RcglRc> list = rcglRcService.selectRcglRcList(rcglRc);
        ExcelUtil<RcglRc> util = new ExcelUtil<RcglRc>(RcglRc.class);
        util.exportExcel(response, list, "人才管理数据");
    }

    /**
     * 获取人才详细信息
     */
    @RequiresPermissions("rcgl:rc:query")
    @GetMapping(value = "/{rcId}")
    public AjaxResult getInfo(@PathVariable("rcId") Long rcId) {
        return AjaxResult.success(rcglRcService.selectRcglRcByRcId(rcId));
    }

    /**
     * 新增人才
     */
    @RequiresPermissions("rcgl:rc:add")
    @Log(title = "新增人才", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody RcglRc rcglRc) {
        return toAjax(rcglRcService.insertRcglRc(rcglRc));
    }

    /**
     * 修改人才信息
     */
    @RequiresPermissions("rcgl:rc:edit")
    @Log(title = "修改人才信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody RcglRc rcglRc) {
        return toAjax(rcglRcService.updateRcglRc(rcglRc));
    }

    /**
     * 删除人才信息
     */
    @RequiresPermissions("rcgl:rc:remove")
    @Log(title = "删除人才信息", businessType = BusinessType.DELETE)
    @DeleteMapping("/{rcIds}")
    public AjaxResult remove(@PathVariable Long[] rcIds) {
        return toAjax(rcglRcService.deleteRcglRcByRcIds(rcIds));
    }

    /**
     * 查询企业管理列表
     */
    @RequiresPermissions("rcgl:rc:list")
    @GetMapping("/qyList")
    public List<Qygl> qyList() {
        List<Qygl> qyList = remoteQyglService.qyList();
        return qyList;
    }

    /**
     * 查询人才所属产业领域
     */
    @GetMapping("/cyDirection")
    public String selectCyDirection(Long qy) {
        String cyDirection = remoteQyglService.selectCyDirection(qy);
        return cyDirection;
    }

    /**
     * 获取高级人才分布
     *
     * @return
     */
    @RequestMapping("/rcDistribute")
    public List<RcglRc> selectRcDistribute() {
        List<RcglRc> rcList = rcglRcService.selectRcDistribute();
        return rcList;
    }

    /**
     * 获取人才领域分布
     *
     * @return
     */
    @RequestMapping("/rcDirection")
    public List<RcglRc> selectRcDirection() {
        List<RcglRc> rcList = rcglRcService.selectRcDirection();
        return rcList;
    }
}
