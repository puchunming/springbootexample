package com.example.provider.controller;

import com.example.provider.service.UserService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * @author ChunMingPU
 * @ClassName UserController
 * @Description
 * @date 2020/5/19
 */
@RestController
public class UserController {
    @Resource
    private UserService userService;
    @RequestMapping("getAll")
    public List<Map> getAll(){
        return  userService.getAll();
    }
}
