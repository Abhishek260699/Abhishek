package com.example.demo.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.example.demo.bean.ExamBean;

@Component
public class ExamRowMapper implements RowMapper<ExamBean>{

	@Override
	public ExamBean mapRow(ResultSet rs, int rowNum) throws SQLException {
		ExamBean exambean=new ExamBean();
		exambean.setSubject(rs.getString(1));
		exambean.setSubjectCode(rs.getString(2));
		exambean.setCompetency(rs.getString(3));
		return exambean;
	}
	
}