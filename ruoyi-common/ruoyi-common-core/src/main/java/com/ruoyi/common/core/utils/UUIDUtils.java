package com.ruoyi.common.core.utils;

import java.util.UUID;

/**
 * @author ljw17
 */
public class UUIDUtils {
    public static String getUUID() {
        return UUID.randomUUID().toString().replace("-", "");
    }

    public static Integer getUUIDInOrderId() {
        Integer orderId = UUID.randomUUID().toString().hashCode();

        //String.hashCode() 值会为空
        orderId = orderId < 0 ? -orderId : orderId;
        return orderId;
    }
}
