package com.qihang.servicesImp;

import com.qihang.pojo.user;
import com.qihang.services.userService;
import com.qihang.dao.userDao;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

@Service("userServiceImp")
public class userServiceImp implements userService {

    @Autowired
    private userDao userDao;

    public int insert(user user) {
        return userDao.insertUser(user);
    }

    public user querybyUsername(String username) {
        return userDao.selectByUserId(username);
    }
}
