package com.hb.am;

import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import org.springframework.web.context.ContextLoaderListener;

@WebListener
public class MyListener extends ContextLoaderListener implements ServletContextListener {
	
}
