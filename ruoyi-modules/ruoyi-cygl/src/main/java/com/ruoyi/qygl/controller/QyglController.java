package com.ruoyi.qygl.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.cygl.domain.CyglCy;
import com.ruoyi.cygl.service.ICyglCyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.common.log.annotation.Log;
import com.ruoyi.common.log.enums.BusinessType;
import com.ruoyi.common.security.annotation.RequiresPermissions;
import com.ruoyi.qygl.domain.Qygl;
import com.ruoyi.qygl.service.IQyglService;
import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.core.utils.poi.ExcelUtil;
import com.ruoyi.common.core.web.page.TableDataInfo;

/**
 * 企业管理Controller
 *
 * @author ljw17
 * @date 2021-12-09
 */
@RestController
@RequestMapping("/qygl")
public class QyglController extends BaseController {
    @Autowired
    private IQyglService qyglService;

    @Autowired
    private ICyglCyService cyglCyService;

    /**
     * 查询企业管理列表
     */
    @RequiresPermissions("cygl:qygl:list")
    @GetMapping("/list")
    public TableDataInfo list(Qygl qygl) {
        startPage();
        List<Qygl> list = qyglService.selectQyglList(qygl);
        return getDataTable(list);
    }

    /**
     * 导出企业管理列表
     */
    @RequiresPermissions("cygl:qygl:export")
    @Log(title = "企业管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Qygl qygl) {
        List<Qygl> list = qyglService.selectQyglList(qygl);
        ExcelUtil<Qygl> util = new ExcelUtil<Qygl>(Qygl.class);
        util.exportExcel(response, list, "企业管理数据");
    }

    /**
     * 获取企业管理详细信息
     */
    @RequiresPermissions("cygl:qygl:query")
    @GetMapping(value = "/{qyId}")
    public AjaxResult getInfo(@PathVariable("qyId") Long qyId) {
        return AjaxResult.success(qyglService.selectQyglByQyId(qyId));
    }

    /**
     * 新增企业管理
     */
    @RequiresPermissions("cygl:qygl:add")
    @Log(title = "企业管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Qygl qygl) {
        return toAjax(qyglService.insertQygl(qygl));
    }

    /**
     * 修改企业管理
     */
    @RequiresPermissions("cygl:qygl:edit")
    @Log(title = "企业管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Qygl qygl) {
        return toAjax(qyglService.updateQygl(qygl));
    }

    /**
     * 删除企业管理
     */
    @RequiresPermissions("cygl:qygl:remove")
    @Log(title = "企业管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{qyIds}")
    public AjaxResult remove(@PathVariable Long[] qyIds) {
        return toAjax(qyglService.deleteQyglByQyIds(qyIds));
    }

    /**
     * 查询产业管理列表
     */
    @RequiresPermissions("cygl:qygl:list")
    @GetMapping("/cyList")
    public List<CyglCy> cyList() {
        List<CyglCy> cyList = cyglCyService.getCyList();
        return cyList;
    }

    /**
     * 查询企业管理列表
     */
    @GetMapping("/qyList")
    public List<Qygl> qyList() {
        List<Qygl> qyList = qyglService.getQyList();
        return qyList;
    }

    /**
     * 获取企业发展情况
     *
     * @return
     */
    @RequestMapping("/cyDevelop")
    public List<Qygl> selectCyDevelop() {
        List<Qygl> qyList = qyglService.selectCyDevelop();
        return qyList;
    }

    /**
     * 查询产业方向
     *
     * @param qy
     * @return
     */
    @GetMapping("/cyDirection")
    public String selectCyDirection(@RequestParam("qy") Long qy) {
        String cyDirection = qyglService.selectCyDirection(qy);
        return cyDirection;
    }
}
