package com.qihang.services;

import com.qihang.pojo.user;

public interface userService {
    public user querybyUsername(String username);

    public int insert(user user);
}
