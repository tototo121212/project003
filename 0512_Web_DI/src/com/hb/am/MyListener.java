package com.hb.am;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import org.springframework.web.context.ContextLoaderListener;

@WebListener
public class MyListener extends ContextLoaderListener implements ServletContextListener {
}
