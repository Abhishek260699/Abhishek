package com.example.demo.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.example.demo.bean.UserBean;

@Component
public class UserRowMapper implements RowMapper<UserBean>{

	@Override
	public UserBean mapRow(ResultSet rs, int rowNum) throws SQLException {
		UserBean userbean=new UserBean();
		userbean.setFirstName(rs.getString(1));
		userbean.setLastName(rs.getString(2));
		userbean.setGender(rs.getString(3));
		userbean.setDob(rs.getString(4));
		userbean.setEmail(rs.getString(5));
		userbean.setContactNumber(rs.getString(6));
		userbean.setUserId(rs.getString(7));
		userbean.setPassword(rs.getString(8));
		userbean.setBirthCity(rs.getString(9));
		userbean.setFavoriteFood(rs.getString(10));
		userbean.setPetName(rs.getString(9));
		return userbean;
	}
	
}