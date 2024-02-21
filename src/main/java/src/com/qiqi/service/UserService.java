package com.qiqi.service;
import com.qiqi.pojo.User;

import java.util.List;

public interface UserService {
    User login(String name,String password);
    List<User> selectAll();
    String deleteUser(String name);
    int addUser(User user);
   void updateUser(User user);
}
