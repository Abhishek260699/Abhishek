package com.example.demo;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class Example {
private String role;
private String Operation;
Map<String,String> map=new HashMap<>();

public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}
public String getOperation() {
	return Operation;
}
public void setOperation(String operation) {
	Operation = operation;
}

}
