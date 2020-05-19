package com.example.consumer.feign;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

/**
 * @author ChunMingPU
 * @InterfaceName UserFeignService
 * @Description
 * @date 2020/5/19 16:32
 */
@FeignClient("provider")
public interface UserFeignService {
    @RequestMapping("getAll")
    List<Map> getAll();
}
