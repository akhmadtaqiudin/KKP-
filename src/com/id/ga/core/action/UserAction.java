package com.id.ga.core.action;

import java.sql.SQLException;
import java.util.Map;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.id.ga.core.mapper.UserMapper;
import com.id.ga.core.model.User;
import com.opensymphony.xwork2.ActionContext;

public class UserAction extends CoreAction{

	private static final long serialVersionUID = 1L;
	private User user;
	private String userName;
	private String password;
	private Map<String, Object> session;
	private UserMapper userMapper = (UserMapper) new ClassPathXmlApplicationContext("beans-config.xml").getBean("userMapper");
	
	public String Login(){
		System.out.println("Jalankan Method Login");
		
		try {
			User user = new User(userName, password);
			int x=0;
			x = userMapper.checkLogin(user);
			if(x>0){
				session.put("userName",user);
				if(session == null){
					user =(User) session.get("userName");
				}
				return SUCCESS;
			}else{
				addFieldError("invalid", "Maaf Username & Password Salah");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		/*try {
			user =(User) session.get("userName");
			if(user != null){
				return SUCCESS;
			}else{
				User user = new User(userName, password);
				int x=0;
				x = userMapper.checkLogin(user);
				if(x>0){
					session.put("userName",user);
				}else{
					addFieldError("invalid", "Maaf User Name dan Password anda salah");
				}
			
				return INPUT;
			}
		} catch (SQLException e) {
			addActionError("Maaf User Name dan Password salah "+e);
		}*/
		return ERROR;
	}
	
	public String LogOut(){
		System.out.println("Jalankan method LogOut");
		Map<String, Object> session = ActionContext.getContext().getSession();
		session.remove("userName");
		return SUCCESS;
	}
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setSession(Map<String, Object> session){
		this.session = session;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public UserMapper getUserMapper() {
		return userMapper;
	}
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}
}
