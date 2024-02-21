package com.qiqi.dao;

import com.qiqi.pojo.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface UserDao {
    @Insert("insert into t_user(name,password) values(#{name},#{password})")
    int insert(User user);
    @Select("select * from t_user")
    List<User> select();
    @Update("update t_user set name=#{name},password=#{password} where name=#{name}")
    void updateUser(User user);
    @Delete("delete from t_user where name=#{name}")
    String deleteUser(String name);
    @Select("select * from t_user where name=#{name} and password=#{password}")
     User findUser(@Param("name") String name ,@Param("password") String password);
}
