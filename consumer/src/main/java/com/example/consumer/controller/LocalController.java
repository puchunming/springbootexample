package com.example.consumer.controller;

import com.example.consumer.service.LocalService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * @author ChunMingPU
 * @ClassName LocalController
 * @Description
 * @date 2020/5/19
 */
@RestController
public class LocalController {
    @Resource
    private LocalService localService;
    @RequestMapping("getAll")
    public List<Map> getAll(){
       return localService.getAll();
    }
}
