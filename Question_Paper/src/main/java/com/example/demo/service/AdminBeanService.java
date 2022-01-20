package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.example.demo.bean.AdminBean;
import com.example.demo.bean.ExamBean;
import com.example.demo.mapper.AdminRowMapper;
import com.example.demo.mapper.ExamRowMapper;

@Component
public class AdminBeanService {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	private AdminRowMapper adminrowmapper;

	public void addAdminDetails(AdminBean adminbean) {
		String sql = "insert into admindetails values(?,?,?,?,?,?,?,?,?,?,?)";
		String firstname = adminbean.getFirstName();
		String lastname = adminbean.getLastName();
		String dob = adminbean.getDob();
		String gender = adminbean.getGender();
		String email = adminbean.getEmail();
		String contactnumber = adminbean.getContactNumber();
		String userid = adminbean.getUserId();
		String password = adminbean.getPassword();
		String birthCity = adminbean.getBirthCity();
		String favoriteFood = adminbean.getFavoriteFood();
		String petName = adminbean.getPetName();

		jdbcTemplate.update(sql, firstname, lastname, gender, dob, email, contactnumber, userid, password, birthCity,
				favoriteFood, petName);
	}

	public int retrieveAdmin(String userId, String password) {
		String sql = "select * from admindetails where userid=?";
		AdminBean adminbean;

		try {
			adminbean = jdbcTemplate.queryForObject(sql, adminrowmapper, userId);
			} catch (EmptyResultDataAccessException e) {
			return -1;
		}
		if (adminbean.getPassword().equals(password)) {
			return 1;
		}

		return 0;
	}

	public String retrieveAdminusername(String contactnumber, String email, String birthcity, String favoritefood,
			String petname) {
		String sql = "select * from admindetails where contactnumber=? and email=?";
		AdminBean adminbean;
		try {
			adminbean = jdbcTemplate.queryForObject(sql, adminrowmapper, contactnumber, email);
		} catch (EmptyResultDataAccessException e) {
			return "Invalid Credentials";
		}
		if (adminbean.getBirthCity().equals(birthcity)) {
			if (adminbean.getFavoriteFood().equals(favoritefood)) {
				if (adminbean.getPetName().equals(petname)) {
					return "Your Username is :" + adminbean.getUserId();
				}
			}
		}
		return "Invalid Credentials";
	}

	public int retrieveAdminpassword(String userid, String contactnumber, String email, String birthcity,
			String favoritefood, String petname) {
		String sql = "select * from admindetails where userid=?";
		AdminBean adminbean;
		try {
			adminbean = jdbcTemplate.queryForObject(sql, adminrowmapper, userid);
		} catch (EmptyResultDataAccessException e) {
			return -1;
		}
		if (adminbean.getBirthCity().equals(birthcity)) {
			if (adminbean.getFavoriteFood().equals(favoritefood)) {
				if (adminbean.getPetName().equals(petname)) {
					return 1;
				}
			}
		}
		return 0;
	}

	public int updateAdminPassword(String password, String userId) {
		String sql = "update admindetails set password=? where userid=?";
		return jdbcTemplate.update(sql, password, userId);
	}
}
