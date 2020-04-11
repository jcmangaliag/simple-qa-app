package com.myProjects.login;

import org.apache.commons.lang3.StringUtils;

public class LoginService {
    public boolean isUserNameValid(String userName) {
        return StringUtils.isNotBlank(userName);
    }
}
