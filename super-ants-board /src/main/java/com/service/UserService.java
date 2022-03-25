package com.service;

import com.dto.UserDto;

public interface UserService {

    boolean addUser(UserDto dto);
    
    String getUserId(String USERID);

    int userIdCheck(String USERID);

    UserDto login(UserDto dto);

    String getUserName(UserDto dto);

    String findUserID(String userNAME, String userEMAILID, String userEMAILWEB);
}
