package com.example.demo.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.example.demo.bean.AdminBean;

@Component
public class AdminRowMapper implements RowMapper<AdminBean>{

	@Override
	public AdminBean mapRow(ResultSet rs, int rowNum) throws SQLException {
		AdminBean adminbean=new AdminBean();
		adminbean.setFirstName(rs.getString(1));
		adminbean.setLastName(rs.getString(2));
		adminbean.setGender(rs.getString(3));
		adminbean.setDob(rs.getString(4));
		adminbean.setEmail(rs.getString(5));
		adminbean.setContactNumber(rs.getString(6));
		adminbean.setUserId(rs.getString(7));
		adminbean.setPassword(rs.getString(8));
		adminbean.setBirthCity(rs.getString(9));
		adminbean.setFavoriteFood(rs.getString(10));
		adminbean.setPetName(rs.getString(9));
		return adminbean;
	}
	
}