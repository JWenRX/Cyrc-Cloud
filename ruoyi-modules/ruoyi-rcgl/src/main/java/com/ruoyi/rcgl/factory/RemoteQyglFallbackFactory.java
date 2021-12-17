package com.ruoyi.rcgl.factory;

import com.ruoyi.common.core.domain.R;
import com.ruoyi.rcgl.model.Qygl;
import com.ruoyi.rcgl.service.RemoteQyglService;
import com.ruoyi.system.api.RemoteUserService;
import com.ruoyi.system.api.domain.SysUser;
import com.ruoyi.system.api.model.LoginUser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.cloud.openfeign.FallbackFactory;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * 用户服务降级处理
 *
 * @author ruoyi
 */
@Component
public class RemoteQyglFallbackFactory implements FallbackFactory<RemoteQyglService> {
    private static final Logger log = LoggerFactory.getLogger(RemoteQyglFallbackFactory.class);

    @Override
    public RemoteQyglService create(Throwable throwable) {
        log.error("企业服务调用失败:{}", throwable.getMessage());
        return new RemoteQyglService() {
            @Override
            public List<Qygl> qyList() {
                List<Qygl> list = new ArrayList<>();
                return list;
            }

            @Override
            public String selectCyDirection(Long qy) {
                return null;
            }
        };
    }
}
