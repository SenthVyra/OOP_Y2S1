<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<%
	int id=Integer.parseInt(request.getParameter("aid"));
	String uname=request.getParameter("uname");
	String email=request.getParameter("email");
	
	int updateProduct=DatabaseConnection.insertUpdateFromSqlQuery("update tbladmin set name='"+uname+"',email='"+email+"' where id='"+id+"'");
	if(updateProduct>0){
		response.sendRedirect("admin-my-account.jsp");
	}else{
		response.sendRedirect("admin-my-account.jsp");
	}
%>