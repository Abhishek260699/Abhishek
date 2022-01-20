package com.example.demo.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.example.demo.bean.Answers;

@Component
public class AnswersRowMapper implements RowMapper<Answers> {

	@Override
	public Answers mapRow(ResultSet rs, int rowNum) throws SQLException {
		Answers ans=new Answers();
		ans.setqId(rs.getString(1));
		ans.setQn(rs.getString(2));
		ans.setC1(rs.getString(3));
		ans.setC2(rs.getString(4));
		ans.setC3(rs.getString(5));
		ans.setC4(rs.getString(6));
		ans.setAns(rs.getString(7));
		ans.setMarks(rs.getInt(8));
		return ans;
	}

}
