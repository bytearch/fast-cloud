package com.bytearch.starter.canal.pojo;

import com.bytearch.starter.canal.annotation.Column;

import java.io.Serializable;

/**
 * @author bytearch
 * @email bytearch@126.com
 * @Date 2021/12/10 16:56
 */
public class UserDTO implements Serializable {
    @Column(column = "username")
    private String username;

    @Column(column = "password")
    private String password;

    @Column(column = "enabled")
    private Integer enabled;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getEnabled() {
        return enabled;
    }

    public void setEnabled(Integer enabled) {
        this.enabled = enabled;
    }

    @Override
    public String toString() {
        return "UserDTO{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", enabled=" + enabled +
                '}';
    }
}
