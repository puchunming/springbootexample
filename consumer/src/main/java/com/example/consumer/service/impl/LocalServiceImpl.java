package com.example.consumer.service.impl;

import com.example.consumer.feign.UserFeignService;
import com.example.consumer.service.LocalService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * @author ChunMingPU
 * @ClassName LocalServiceImpl
 * @Description
 * @date 2020/5/19
 */
@Service
public class LocalServiceImpl  implements LocalService {
    @Resource
    private UserFeignService userFeignService;
    @Override
    public List<Map> getAll() {
        return userFeignService.getAll();
    }
}
