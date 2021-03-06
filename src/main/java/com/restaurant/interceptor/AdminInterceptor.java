package com.restaurant.interceptor;

import com.restaurant.enums.RoleEnum;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.jms.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 管理界面拦截器
 */
public class AdminInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        HttpSession session=httpServletRequest.getSession();
        int roleCode=(int)session.getAttribute("roleCode");
        if(roleCode != RoleEnum.ADMIN.getRoleCode()){
            httpServletResponse.setCharacterEncoding("UTF-8");
            httpServletRequest.getRequestDispatcher("login").include(httpServletRequest,httpServletResponse);
            System.out.println("拦截");
            return false;
        }

        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
