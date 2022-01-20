package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.Example;
import com.example.demo.bean.AdminBean;
import com.example.demo.bean.Answers;
import com.example.demo.bean.ExamBean;
import com.example.demo.bean.QuestionBean;
import com.example.demo.bean.UserBean;

import com.example.demo.service.AdminBeanService;
import com.example.demo.service.ExamBeanService;
import com.example.demo.service.QuestionBeanService;
import com.example.demo.service.UserBeanService;

@Controller
public class HomePageController {

	@Autowired
	private UserBeanService userBeanService;

	@Autowired
	private AdminBeanService adminBeanService;

	@Autowired
	private QuestionBeanService questionBeanService;

	@Autowired
	private ExamBeanService examBeanService;

	@ModelAttribute("user")
	public UserBean s1() {
		return new UserBean();
	}

	@ModelAttribute("admin")
	public AdminBean s2() {
		return new AdminBean();
	}

	@ModelAttribute("role")
	public Map<String, String> m1() {
		Map<String, String> map = new HashMap<>();
		map.put("User", "User");
		map.put("Admin", "Admin");
		return map;
	}

	@ModelAttribute("operation")
	public Map<String, String> m2() {
		Map<String, String> map = new HashMap<>();
		map.put("Register", "Register");
		map.put("Login", "Login");
		return map;
	}

	@ModelAttribute("example")
	public Example m3() {
		return new Example();
	}

	@ModelAttribute("gender")
	public Map<String, String> m4() {
		Map<String, String> map = new HashMap<>();
		map.put("Male", "Male");
		map.put("Female", "Female");
		return map;
	}

	@ModelAttribute("gender1")
	public Map<String, String> m5() {
		Map<String, String> map = new HashMap<>();
		map.put("Male", "Male");
		map.put("Female", "Female");
		return map;
	}

	@ModelAttribute("competency")
	public Map<String, String> m6() {
		Map<String, String> map = new HashMap<>();
		map.put("Easy", "Easy");
		map.put("Medium", "Medium");
		map.put("Hard", "Hard");
		return map;
	}

	@RequestMapping("/homepage")
	public String showHomePage() {
		return "homepage.jsp";
	}



	@RequestMapping(value = "/operation", method = RequestMethod.POST)
	public String showLoginAndRegisterPage(@ModelAttribute("example") Example example) {
		String userrole = example.getRole();
		String registerandlogin = example.getOperation();

		if (userrole.equals("User")) {
			if (registerandlogin.equals("Register")) {
				return "userregister.jsp";
			} else {
				return "userlogin.jsp";
			}
		}

		else if (userrole.equals("Admin")) {
			if (registerandlogin.equals("Register")) {
				return "adminregister.jsp";
			} else {
				return "adminlogin.jsp";
			}
		}

		return "redirect:/homepage";
	}

	@RequestMapping(value = "/addUserDetails", method = RequestMethod.POST)
	public String addDetails(@ModelAttribute("user") UserBean userbean, ModelMap model) {
		userBeanService.addUserDetails(userbean);
		model.addAttribute("user", new UserBean());
		return "userlogin.jsp";
	}

	@RequestMapping(value = "/addAdminDetails", method = RequestMethod.POST)
	public String addAdminDetails(@ModelAttribute("admin") AdminBean adminbean, ModelMap model) {
		adminBeanService.addAdminDetails(adminbean);
		model.addAttribute("admin", new AdminBean());
		return "adminlogin.jsp";
		
	}
	@RequestMapping(value = "/validateUserLogin", method = RequestMethod.POST)

	public String validateUserLogin(@ModelAttribute("user") UserBean userbean, ModelMap model) {
		String userId = userbean.getUserId();
		String password = userbean.getPassword();
		int result = userBeanService.retrieveUser(userId, password);
		if (result == 1) {
			model.put("message", "Successfully logged in!!");
			return "userhomepage.jsp";
		} else if (result == 0) {
			model.put("message", "Password is incorrect!");
			return "userlogin.jsp";
		}
		model.put("message", "Please enter valid user id!");
		return "userlogin.jsp";
	}

	@RequestMapping(value = "/validateAdminLogin", method = RequestMethod.POST)

	public String validateAdminLogin(@ModelAttribute("admin") AdminBean adminbean, ModelMap model) {
		String userId = adminbean.getUserId();
		String password = adminbean.getPassword();
		int result = adminBeanService.retrieveAdmin(userId, password);
		if (result == 1) {
			model.put("message", "Successfully logged in!!");
			return "adminhomepage.jsp";
		} else if (result == 0) {
			model.put("message", "Password is incorrect!");
			return "adminlogin.jsp";
		}
		model.put("message", "Please enter valid user id!");
		return "adminlogin.jsp";
	}

	@RequestMapping("/addExamDetails")
	public String examDetails(ModelMap model) {
		model.addAttribute("exam", new ExamBean());
		return "examdetails.jsp";
	}

	@RequestMapping(value = "/addingExamDetails", method = RequestMethod.POST)
	public String addExamDetails(@ModelAttribute("exam") ExamBean examBean, ModelMap model) {
		examBeanService.addExamDetails(examBean);
		model.addAttribute("exam", new ExamBean());
		return "adminhomepage.jsp";

	}
	@RequestMapping("/addQuestionDetails")
	public String questionDetails(ModelMap model) {
		QuestionBean question = new QuestionBean();
		question.setqId1("Q01");
		question.setqId2("Q02");
		question.setqId3("Q03");
		question.setqId4("Q04");
		question.setqId5("Q05");
		model.addAttribute("question", question);
		List<ExamBean> retrieveExamDetails = examBeanService.retrieveExamDetails();
		List<String> sCodes=new ArrayList<String>();
		List<String> subs=new ArrayList<String>();
		for(ExamBean e: retrieveExamDetails ) {
			sCodes.add(e.getSubjectCode());
			subs.add(e.getSubject());
		}
		model.put("sCodes", sCodes);
		model.put("subs", subs);
		return "questiondetails.jsp";
	}
	@RequestMapping(value = "/addingQuestionDetails", method = RequestMethod.POST)
	public String addQuestionDetails(@ModelAttribute("question") QuestionBean questionBean, ModelMap model) {
		questionBeanService.addQuestionDetails(questionBean);
		
		return "adminhomepage.jsp";

	}

	@RequestMapping("/userforgotusername")
	public String userForgotusername(ModelMap model) {
		return "userforgotusername.jsp";
	}
	@RequestMapping("/adminforgotusername")
	public String adminForgotusername() {
		return "adminforgotusername.jsp";
	}

	@RequestMapping("/userforgotpassword")
	public String userForgotpassword() {
		return "userforgotpassword.jsp";
	}

	@RequestMapping("/adminforgotpassword")
	public String adminForgotpassword() {
		return "adminforgotpassword.jsp";
	}

	@RequestMapping(value = "/userlogout", method = RequestMethod.GET)
	public String userLogout() {
		return "homepage.jsp";
	}

	@RequestMapping(value = "/adminlogout", method = RequestMethod.GET)
	public String adminLogout() {
		return "homepage.jsp";
	}
	
	@RequestMapping(value = "/backtoadminhomepage", method = RequestMethod.GET)
	public String adminBack() {
		return "adminhomepage.jsp";
	}
	@RequestMapping(value = "/backtouserhomepage", method = RequestMethod.GET)
	public String userBack() {
		return "userhomepage.jsp";
	}
	@RequestMapping(value = "/backtohomepage", method = RequestMethod.GET)
	public String Back() {
		return "homepage.jsp";
	}

	@RequestMapping(value = "/validateuserusername", method = RequestMethod.POST)

	public String validateUserUsername(@ModelAttribute("user") UserBean userbean, ModelMap model) {
		String contactnumber = userbean.getContactNumber();
		String email = userbean.getEmail();
		String birthcity = userbean.getBirthCity();
		String favoritefood = userbean.getFavoriteFood();
		String petname = userbean.getPetName();
		String result = userBeanService.retrieveUserusername(contactnumber, email, birthcity, favoritefood, petname);

		model.put("message", result);
		return "userlogin.jsp";
	}

	@RequestMapping(value = "/validateadminusername", method = RequestMethod.POST)

	public String validateAdminUsername(@ModelAttribute("admin") AdminBean adminbean, ModelMap model) {
		String contactnumber = adminbean.getContactNumber();
		String email = adminbean.getEmail();
		String birthcity = adminbean.getBirthCity();
		String favoritefood = adminbean.getFavoriteFood();
		String petname = adminbean.getPetName();
		String result = adminBeanService.retrieveAdminusername(contactnumber, email, birthcity, favoritefood, petname);

		model.put("message", result);
		return "adminlogin.jsp";
	}

	@RequestMapping(value = "/validateuserpassword", method = RequestMethod.POST)

	public String validateUserPassword(@ModelAttribute("user") UserBean userbean, ModelMap model) {
		String contactnumber = userbean.getContactNumber();
		String email = userbean.getEmail();
		String birthcity = userbean.getBirthCity();
		String favoritefood = userbean.getFavoriteFood();
		String petname = userbean.getPetName();
		String userid = userbean.getUserId();
		int result = userBeanService.retrieveUserpassword(userid, contactnumber, email, birthcity, favoritefood,
				petname);
		if (result == 1) {
			UserBean bean2 = new UserBean();
			bean2.setUserId(userid);
			model.addAttribute("user", bean2);
			return "userpasswordreset.jsp";
		}
		model.put("message", "Invalid Credentials");
		return "userforgotpassword.jsp";
	}

	@RequestMapping(value = "/validateadminpassword", method = RequestMethod.POST)

	public String validateAdminPassword(@ModelAttribute("admin") AdminBean adminbean, ModelMap model) {
		String contactnumber = adminbean.getContactNumber();
		String email = adminbean.getEmail();
		String birthcity = adminbean.getBirthCity();
		String favoritefood = adminbean.getFavoriteFood();
		String petname = adminbean.getPetName();
		String userid = adminbean.getUserId();
		int result = adminBeanService.retrieveAdminpassword(userid, contactnumber, email, birthcity, favoritefood,
				petname);
		if (result == 1) {
			AdminBean bean2 = new AdminBean();
			bean2.setUserId(userid);
			model.addAttribute("admin", bean2);
			return "adminpasswordreset.jsp";
		}
		model.put("message", "Invalid Credentials");
		return "adminforgotpassword.jsp";
	}

	@RequestMapping(value = "/updateuserpassword", method = RequestMethod.GET)
	public String updateUserPassword(@ModelAttribute UserBean user, ModelMap model) {
		int result = userBeanService.updateUserPassword(user.getPassword(), user.getUserId());
		if (result == 1) {
			model.put("messsage", "Successfully reset password");
			return "userlogin.jsp";
		}
		model.put("message", "Re-enter the Password");
		return "userpasswor	dreset.jsp";
	}

	@RequestMapping(value = "/updateadminpassword", method = RequestMethod.GET)
	public String updateAdminPassword(@ModelAttribute AdminBean admin, ModelMap model) {
		int result = adminBeanService.updateAdminPassword(admin.getPassword(), admin.getUserId());
		if (result == 1) {
			model.put("messsage", "Successfully reset password");
			return "adminlogin.jsp";
		}
		model.put("message", "Re-enter the Password");
		return "adminpasswordreset.jsp";
	}
	
	@RequestMapping(value = "/showexamdetails", method = RequestMethod.GET)
	public String showExamdetails(ModelMap model) {
		List<ExamBean> retrieveExamDetails = examBeanService
				.retrieveExamDetails();
		model.addAttribute("examdetails", retrieveExamDetails);
		return "showexamdetails.jsp";
	}
	
	@RequestMapping(value = "/viewAssesments", method = RequestMethod.GET)
	public String showAssesments(ModelMap model) {
		List<ExamBean> retrieveExamDetails = examBeanService
				.retrieveExamDetails();
		model.addAttribute("Assesments", retrieveExamDetails);
		return "viewAssesments.jsp";
	}
	
	
	@RequestMapping(value="/attemptAssesment", method=RequestMethod.GET)
	
	public String attemptAssesment(@RequestParam("code") String subjectCode, ModelMap model) {
		List<Answers> questionPaper = questionBeanService.getQuestionPaper(subjectCode);
		String subjectName=examBeanService.retrieveExamDetail(subjectCode).getSubject();
		QuestionBean qnBean=new QuestionBean();
		qnBean.setSubjectCode(subjectCode);
		qnBean.setSubject(subjectName);
		qnBean.setqId1(questionPaper.get(0).getqId());
		qnBean.setQ1(questionPaper.get(0).getQn());
		String q1c1=questionPaper.get(0).getC1();
		String q1c2=questionPaper.get(0).getC2();
		String q1c3=questionPaper.get(0).getC3();
		String q1c4=questionPaper.get(0).getC4();
		qnBean.setM1(questionPaper.get(0).getMarks());
		
		qnBean.setqId2(questionPaper.get(1).getqId());
		qnBean.setQ2(questionPaper.get(1).getQn());
		String q2c1=questionPaper.get(1).getC1();
		String q2c2=questionPaper.get(1).getC2();
		String q2c3=questionPaper.get(1).getC3();
		String q2c4=questionPaper.get(1).getC4();
		qnBean.setM2(questionPaper.get(1).getMarks());
		
		qnBean.setqId3(questionPaper.get(2).getqId());
		qnBean.setQ3(questionPaper.get(2).getQn());
		String q3c1=questionPaper.get(2).getC1();
		String q3c2=questionPaper.get(2).getC2();
		String q3c3=questionPaper.get(2).getC3();
		String q3c4=questionPaper.get(2).getC4();
		qnBean.setM3(questionPaper.get(2).getMarks());
		
		qnBean.setqId4(questionPaper.get(3).getqId());
		qnBean.setQ4(questionPaper.get(3).getQn());
		String q4c1=questionPaper.get(3).getC1();
		String q4c2=questionPaper.get(3).getC2();
		String q4c3=questionPaper.get(3).getC3();
		String q4c4=questionPaper.get(3).getC4();
		qnBean.setM1(questionPaper.get(3).getMarks());
		
		qnBean.setqId5(questionPaper.get(4).getqId());
		qnBean.setQ5(questionPaper.get(4).getQn());
		String q5c1=questionPaper.get(4).getC1();
		String q5c2=questionPaper.get(4).getC2();
		String q5c3=questionPaper.get(4).getC3();
		String q5c4=questionPaper.get(4).getC4();
		qnBean.setM5(questionPaper.get(0).getMarks());
		
		model.addAttribute("qnPaper", qnBean);
		model.put("q1c1", q1c1);
		model.put("q1c2", q1c2);
		model.put("q1c3", q1c3);
		model.put("q1c4", q1c4);
		
		model.put("q2c1", q2c1);
		model.put("q2c2", q2c2);
		model.put("q2c3", q2c3);
		model.put("q2c4", q2c4);
		
		model.put("q3c1", q3c1);
		model.put("q3c2", q3c2);
		model.put("q3c3", q3c3);
		model.put("q3c4", q3c4);
		
		model.put("q4c1", q4c1);
		model.put("q4c2", q4c2);
		model.put("q4c3", q4c3);
		model.put("q4c4", q4c4);
		
		model.put("q5c1", q5c1);
		model.put("q5c2", q5c2);
		model.put("q5c3", q5c3);
		model.put("q5c4", q5c4);
	
		
		return "takeAssesment.jsp";
	}
	
	
	@RequestMapping(value="/validateAnswers", method=RequestMethod.POST)
	@ResponseBody
	public String validateAnswers(@ModelAttribute("qnPaper") QuestionBean answers, ModelMap model) {
		int marks=0;
		String subCode=answers.getSubjectCode();
		String q1=answers.getqId1();
		String q2=answers.getqId2();
		String q3=answers.getqId3();
		String q4=answers.getqId4();
		String q5=answers.getqId5();
		
		String a1=answers.getA1();
		String a2=answers.getA2();
		String a3=answers.getA3();
		String a4=answers.getA4();
		String a5=answers.getA5();
		
		if(a1.equals(questionBeanService.retrieveAnswers(subCode, q1).getAns()))
			marks+=questionBeanService.retrieveAnswers(subCode, q1).getMarks();
		if(a2.equals(questionBeanService.retrieveAnswers(subCode, q2).getAns()))
			marks+=questionBeanService.retrieveAnswers(subCode, q2).getMarks();
		if(a3.equals(questionBeanService.retrieveAnswers(subCode, q3).getAns()))
			marks+=questionBeanService.retrieveAnswers(subCode, q3).getMarks();
		if(a4.equals(questionBeanService.retrieveAnswers(subCode, q4).getAns()))
			marks+=questionBeanService.retrieveAnswers(subCode, q4).getMarks();
		if(a5.equals(questionBeanService.retrieveAnswers(subCode, q5).getAns()))
			marks+=questionBeanService.retrieveAnswers(subCode, q5).getMarks();
		
		return "Your score is: "+ Integer.toString(marks);
	}
	
	
	
}

