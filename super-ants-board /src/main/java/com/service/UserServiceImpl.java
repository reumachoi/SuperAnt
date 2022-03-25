package com.service;

import com.dao.UserDao;
import com.dto.UserDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

    private final UserDao dao;

    @Override
    public boolean addUser(UserDto dto) {
        int cnt = dao.addUser(dto);
        return cnt > 0?true:false;
    }

    @Override
    public String getUserId(String USERID) {
        return dao.getUserId(USERID);
    }

    @Override
    public int userIdCheck(String USERID) {
        return dao.userIdCheck(USERID);
    }

    @Override
    public UserDto login(UserDto dto) {
        return dao.login(dto);
    }

    @Override
    public String getUserName(UserDto dto) {
        return dao.getUserName(dto);
    }

    @Override
    public String findUserID(String userNAME, String userEMAILID, String userEMAILWEB){
        return dao.findUserID(userNAME, userEMAILID, userEMAILWEB);
    }
}
