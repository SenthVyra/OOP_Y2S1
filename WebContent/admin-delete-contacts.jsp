<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<%
	int id=Integer.parseInt(request.getParameter("id"));

	int deleteProduct=DatabaseConnection.insertUpdateFromSqlQuery("delete from tblcontact where id='"+id+"' ");
	if(deleteProduct>0){
		response.sendRedirect("admin-view-contacts.jsp");
	}else{
		response.sendRedirect("admin-view-contacts.jsp");
	}
%>