package com.bestaone.meishi.front.web.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class InitServerListener
 *
 */
@WebListener
public class InitServerListener implements ServletContextListener {

//	private final Logger logger = LoggerFactory.getLogger(getClass());
	
    /**
     * Default constructor. 
     */
    public InitServerListener() {}

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    @Override
	public void contextInitialized(ServletContextEvent sce) {
//    	logger.info("Initializing Server...");
//    	Initializer initializer = SpringContext.getBean("initializer");
//    	initializer.initData();
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    @Override
	public void contextDestroyed(ServletContextEvent sce) { }
	
}
