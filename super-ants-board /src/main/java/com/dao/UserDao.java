package com.dao;

import com.dto.LoginDto;
import com.dto.StockTalkDto;
import com.dto.UserDto;

import java.util.List;

public interface UserDao {

    int addUser(UserDto dto);

    String getUserId(String USERID);

    int userIdCheck(String USERID);

    UserDto login(UserDto dto);

    String getUserName(UserDto dto);

    String findUserID(String userNAME, String userEMAILID, String userEMAILWEB);
}
