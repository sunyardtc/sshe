/**
 * 
 */
package com.service.impl;

import java.io.Serializable;

import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.IUserDao;
import com.model.Tuser;
import com.service.IUserService;

/**
 * @author Administrator
 *
 */
@Service("userService")
public class UserServiceImpl implements IUserService{
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(UserServiceImpl.class);

	private IUserDao userDao;
	
	/**
	 * @return userDao
	 */
	public IUserDao getUserDao() {
		return userDao;
	}

	/**
	 * @param userDao set the userDao
	 */
	@Autowired
	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public void test() {
		logger.info("test");
	}

	@Override
	public Serializable save(Tuser t) {		
		return userDao.save(t);
	}


}
