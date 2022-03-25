package com.dto;

import lombok.Builder;
import lombok.Getter;

import java.io.Serializable;

@Getter
public class LoginDto implements Serializable {

    private String userID;
    private String userPW;

    public LoginDto() {
    }

    @Builder
    public LoginDto(String userID, String userPW) {
        super();
        this.userID = userID;
        this.userPW = userPW;
    }

}
