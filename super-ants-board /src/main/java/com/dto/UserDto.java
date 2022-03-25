package com.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@Getter
@Setter
public class UserDto implements Serializable {

        String userid;
        String userpw;
        String useremailid;
        String username;
        String useremailweb;
        int userphnumhead;
        int userphnummid;
        int userphnumend;

    public UserDto() {

    }

    @Override
    public String toString() {
        return "UserDto{" +
                "userid='" + userid + '\'' +
                ", userpw='" + userpw + '\'' +
                ", useremailid='" + useremailid + '\'' +
                ", username='" + username + '\'' +
                ", useremailweb='" + useremailweb + '\'' +
                ", userphnumhead=" + userphnumhead +
                ", userphnummid=" + userphnummid +
                ", userphnumend=" + userphnumend +
                '}';
    }

    public UserDto(String userid, String userpw, String useremailid, String username, String useremailweb, int userphnumhead, int userphnummid, int userphnumend) {
        this.userid = userid;
        this.userpw = userpw;
        this.useremailid = useremailid;
        this.username = username;
        this.useremailweb = useremailweb;
        this.userphnumhead = userphnumhead;
        this.userphnummid = userphnummid;
        this.userphnumend = userphnumend;
    }


}