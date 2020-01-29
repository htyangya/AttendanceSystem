package com.jp.haiyou.attendance.web.listern;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class Listener implements ServletContextListener{

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext sc = sce.getServletContext();
        sc.setAttribute("path",sc.getContextPath());
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }

}
