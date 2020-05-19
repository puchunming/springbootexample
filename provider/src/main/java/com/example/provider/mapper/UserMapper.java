package com.example.provider.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * @author ChunMingPU
 * @InterfaceName UserMapper
 * @Description
 * @date 2020/5/19 16:24
 */
@Mapper
public interface UserMapper {
    @Select("select * from person")
    List<Map> getAll();

}
