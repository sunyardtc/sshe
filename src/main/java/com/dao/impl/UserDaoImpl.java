package com.dao.impl;

import java.io.Serializable;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.IUserDao;
import com.model.Tuser;

/**
 * @author 陈大碎
 * @create date 2014-1-17下午3:50:27
 */
@Repository("userDao")
public class UserDaoImpl implements IUserDao {

	private SessionFactory sessionFactory;
	
	/**
	 * @return sessionFactory
	 */
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	/**
	 * @param sessionFactory set the sessionFactory
	 */
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Serializable save(Tuser t) {
		return this.getSessionFactory().getCurrentSession().save(t);
	}


}
