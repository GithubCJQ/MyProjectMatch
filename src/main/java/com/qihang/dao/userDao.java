package com.qihang.dao;

import com.qihang.pojo.user;

public interface userDao {
    public user selectByUserId(String username);

    public int insertUser(user user);
}
