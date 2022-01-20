package com.example.demo.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.example.demo.bean.Answers;
import com.example.demo.bean.ExamBean;
import com.example.demo.bean.QuestionBean;
import com.example.demo.mapper.AnswersRowMapper;
import com.example.demo.mapper.ExamRowMapper;


@Component
public class QuestionBeanService {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	private AnswersRowMapper ansRowMapper;

	@Autowired
	private ExamRowMapper examRowMapper;

	public void addQuestionDetails(QuestionBean questionBean) {
		String sql1 = "create table "+questionBean.getSubjectCode()+" (question_id varchar(20), question varchar(300),choice1 varchar(300), choice2 varchar(300), choice3 varchar(300), choice4 varchar(300), answer varchar(300),marks int)";
		jdbcTemplate.update(sql1);
		String sql2 = "insert into "+questionBean.getSubjectCode()+" values(?,?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql2, questionBean.getqId1(), questionBean.getQ1(), questionBean.getQ1c1(),
				questionBean.getQ1c2(), questionBean.getQ1c3(), questionBean.getQ1c4(), questionBean.getA1(),
				questionBean.getM1());
		jdbcTemplate.update(sql2, questionBean.getqId2(), questionBean.getQ2(), questionBean.getQ2c1(),
				questionBean.getQ2c2(), questionBean.getQ2c3(), questionBean.getQ2c4(), questionBean.getA2(),
				questionBean.getM2());
		jdbcTemplate.update(sql2, questionBean.getqId3(), questionBean.getQ3(), questionBean.getQ3c1(),
				questionBean.getQ3c2(), questionBean.getQ3c3(), questionBean.getQ3c4(), questionBean.getA3(),
				questionBean.getM3());
		jdbcTemplate.update(sql2, questionBean.getqId4(), questionBean.getQ4(), questionBean.getQ4c1(),
				questionBean.getQ4c2(), questionBean.getQ4c3(), questionBean.getQ4c4(), questionBean.getA4(),
				questionBean.getM4());
		jdbcTemplate.update(sql2, questionBean.getqId5(), questionBean.getQ5(), questionBean.getQ5c1(),
				questionBean.getQ5c2(), questionBean.getQ5c3(), questionBean.getQ5c4(), questionBean.getA5(),
				questionBean.getM5());
	}

	public Answers retrieveAnswers(String subjectCode, String qId){
		String sql="select * from "+subjectCode+" where question_id=?";
		return jdbcTemplate.queryForObject(sql, ansRowMapper,qId);
	}
	
	public List<Answers> getQuestionPaper(String subjectCode){
		String sql="select * from "+subjectCode+"";
		return jdbcTemplate.query(sql, ansRowMapper);
	}
}
