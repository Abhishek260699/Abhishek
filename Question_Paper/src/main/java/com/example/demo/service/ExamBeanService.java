package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.example.demo.bean.ExamBean;
import com.example.demo.mapper.ExamRowMapper;

@Component
public class ExamBeanService {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private ExamRowMapper examrowmapper;
	
		
		public void addExamDetails(ExamBean examBean) {
			String sql="insert into examdetails values(?,?,?)";
			String subject=examBean.getSubject();
			String subjectCode=examBean.getSubjectCode();
			String competency=examBean.getCompetency();
			
		    jdbcTemplate.update(sql,subject,subjectCode,competency);
	}
		
		public List<ExamBean> retrieveExamDetails() {
			String sql="select * from examdetails";
		    return jdbcTemplate.query(sql,examrowmapper);
			
		}
		
		public ExamBean retrieveExamDetail(String subjectCode) {
			String sql="select * from examdetails where subjectCode=?";
			return jdbcTemplate.queryForObject(sql, examrowmapper,subjectCode);
		}
}
	

