package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.example.demo.bean.UserBean;
import com.example.demo.mapper.UserRowMapper;

@Component
public class UserBeanService {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	private UserRowMapper userrowmapper;

	public void addUserDetails(UserBean userbean) {
		String sql = "insert into userdetails values(?,?,?,?,?,?,?,?,?,?,?)";
		String firstname = userbean.getFirstName();
		String lastname = userbean.getLastName();
		String dob = userbean.getDob();
		String gender = userbean.getGender();
		String email = userbean.getEmail();
		String contactnumber = userbean.getContactNumber();
		String userid = userbean.getUserId();
		String password = userbean.getPassword();
		String birthCity = userbean.getBirthCity();
		String favoriteFood = userbean.getFavoriteFood();
		String petName = userbean.getPetName();

		jdbcTemplate.update(sql, firstname, lastname, gender, dob, email, contactnumber, userid, password, birthCity,
				favoriteFood, petName);
	}

	public int retrieveUser(String userId, String password) {
		String sql = "select * from userdetails where userid=?";
		UserBean userbean;

		try {
			userbean = jdbcTemplate.queryForObject(sql, userrowmapper, userId);

		} catch (EmptyResultDataAccessException e) {
			return -1;
		}
		if (userbean.getPassword().equals(password)) {
			return 1;
		}

		return 0;
	}

	public String retrieveUserusername(String contactnumber, String email, String birthcity, String favoritefood,
			String petname) {
		String sql = "select * from userdetails where contactnumber=? and email=?";
		UserBean userbean;
		try {
			userbean = jdbcTemplate.queryForObject(sql, userrowmapper, contactnumber, email);
		} catch (EmptyResultDataAccessException e) {
			return "Invalid";
		}
		if (userbean.getBirthCity().equals(birthcity)) {
			if (userbean.getFavoriteFood().equals(favoritefood)) {
				if (userbean.getPetName().equals(petname)) {
					return "Your Username is :" + userbean.getUserId();
				}
			}
		}
		return "Invalid Credentials";
	}

	public int retrieveUserpassword(String userid, String contactnumber, String email, String birthcity,
			String favoritefood, String petname) {
		String sql = "select * from userdetails where userid=?";
		UserBean userbean;
		try {
			userbean = jdbcTemplate.queryForObject(sql, userrowmapper, userid);
		} catch (EmptyResultDataAccessException e) {
			return -1;
		}
		if (userbean.getBirthCity().equals(birthcity)) {
			if (userbean.getFavoriteFood().equals(favoritefood)) {
				if (userbean.getPetName().equals(petname)) {
					return 1;
				}
			}
		}
		return 0;
	}

	public int updateUserPassword(String password, String userId) {
		String sql = "update userdetails set password=? where userid=?";
		return jdbcTemplate.update(sql, password, userId);
	}

}
