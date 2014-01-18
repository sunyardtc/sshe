/**
 * 
 */
package com.action;

import org.apache.log4j.Logger;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.service.IUserService;

/**
 * @author Administrator
 *
 */
@ParentPackage("basePackage")
@Namespace("/")
@Action(value = "userAction")
public class UserAction {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(UserAction.class);
	
	private IUserService userService;

	public IUserService getUserService() {
		return userService;
	}

	@Autowired
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	public void test(){
		logger.info("进入Action");
		/*ApplicationContext ac = WebApplicationContextUtils.getWebApplicationContext(ServletActionContext.getServletContext());
		IUserService ius = (IUserService) ac.getBean("userService");
		ius.test();*/
		userService.test();
	}
}
