package com.sdsc5003.worldcup.web.components;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class SessionManager extends HandlerInterceptorAdapter {

    public static final long MAX_INACTIVE_SESSION_TIME = 1000 * 60 * 20; // 20 minutes

    public static final String LAST_REQUEST_TIME = "lastRequestTime";

    private static final String IS_LOGIN = "isLogin";

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {
        HttpSession session = request.getSession();
        Object isLogin = session.getAttribute(IS_LOGIN);
        if (isLogin != null) {
            session.setAttribute(LAST_REQUEST_TIME, System.currentTimeMillis());
            return true;
        }
        response.sendRedirect("/index.html#/join");
        return false;
    }
}
