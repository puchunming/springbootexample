package com.example.provider.service.impl;

import com.example.provider.mapper.UserMapper;
import com.example.provider.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * @author ChunMingPU
 * @ClassName UserServiceImpl
 * @Description
 * @date 2020/5/19
 */
@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;

    @Override
    public List<Map> getAll() {
        return userMapper.getAll() ;
    }
}
