package com.service.impl;

import static org.junit.Assert.*;

import java.util.Date;
import java.util.UUID;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.model.Tuser;
import com.service.IUserService;

public class UserServiceImplTest {	
	@Test
	public void test() {
//		ApplicationContext ac = new ClassPathXmlApplicationContext(new String[]{"classpath:spring.xml","classpath:spring-hibernate.xml"});
//		IUserService ius = (IUserService) ac.getBean("userService");
//		ius.test();
	}
	
	
	@Test
	public void testHibernate(){		
//		ApplicationContext ac = new ClassPathXmlApplicationContext(new String[]{"classpath:spring.xml","classpath:spring-hibernate.xml"});
//		IUserService ius = (IUserService) ac.getBean("userService");
//		Tuser t = new Tuser();
//		t.setId(UUID.randomUUID().toString());
//		t.setName("杜兰特");
//		t.setPwd("cds");
//		t.setCreatedatetime(new Date());		
//		ius.save(t);
	}

}
