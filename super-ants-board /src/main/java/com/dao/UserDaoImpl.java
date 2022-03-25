package com.dao;

import com.dto.LoginDto;
import com.dto.UserDto;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class UserDaoImpl implements UserDao{

    private final SqlSession ss;
    private final String NS = "MEMBER.";

    @Override
    public int addUser(UserDto dto) {
        return ss.insert(NS + "addUser", dto);
    }

    // 아이디 찾기
    @Override
    public String getUserId(String USERID) {
        return ss.selectOne(NS + "getUserID", USERID);
    }

    // 아이디 중복검사
    @Override
    public int userIdCheck(String USERID) {

        return ss.selectOne(NS + "userIdCheck", USERID);
    }

    @Override
    public UserDto login(UserDto dto) {
//        System.out.println(dto.toString());
        //return ss.selectOne(NS+"login", dto);
        UserDto user = ss.selectOne(NS+"login", dto);
        System.out.println(user.toString());
        return    ss.selectOne(NS+"login", dto);
    }

    @Override
    public String getUserName(UserDto dto) {
        return ss.selectOne(NS + "getUserName", dto);
    }

    //아이디 찾기 관련 검사
    @Override
    public String findUserID(String userNAME, String userEMAILID, String userEMAILWEB){
        try {
            String a=ss.selectOne(NS + "getUSERID", userNAME);
            String b=ss.selectOne(NS + "getUserEMAILID", userEMAILID);
            List<String> c=ss.selectList(NS + "getUserEMAILWEB", userEMAILWEB);
            if(a.equals(b)&c.contains(a)){
                return a;
            }
            else {
                return "can not find id";
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "can not";
    }
}
