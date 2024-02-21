package com.qiqi.service.impl;

import com.qiqi.dao.UserDao;
import com.qiqi.pojo.User;
import com.qiqi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserDao userDao;


    @Override
    public User login(String name,String password) {
       return userDao.findUser(name, password);
    }

    @Override
    public List<User> selectAll() {
        return userDao.select();
    }

    @Override
    public String deleteUser(String name) {
        return userDao.deleteUser(name);
    }

    @Override
    public int addUser(User user) {
        return  userDao.insert(user);
    }

    @Override
    public void updateUser(User user) {
        userDao.updateUser(user);
    }
}
