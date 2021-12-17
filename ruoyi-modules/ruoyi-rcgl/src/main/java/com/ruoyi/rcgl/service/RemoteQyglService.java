package com.ruoyi.rcgl.service;

import com.ruoyi.common.core.constant.ServiceNameConstants;
import com.ruoyi.rcgl.factory.RemoteQyglFallbackFactory;
import com.ruoyi.rcgl.model.Qygl;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author ljw17
 */
@FeignClient(contextId = "remoteQyglService", value = ServiceNameConstants.CYGL_SERVICE, fallbackFactory = RemoteQyglFallbackFactory.class)
public interface RemoteQyglService {
    /**
     * 通过用户名查询用户信息
     *
     * @return 结果
     */
    @GetMapping(value = "/qygl/qyList")
    public List<Qygl> qyList();

    /**
     * 查询人才所属产业领域
     *
     * @param qy
     * @return
     */
    @GetMapping(value = "/qygl/cyDirection")
    public String selectCyDirection(@RequestParam("qy") Long qy);
}
