<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<%
	int id=Integer.parseInt(request.getParameter("pid"));
	String pname=request.getParameter("pname");
	String price=request.getParameter("price");
	String description=request.getParameter("description");
	String mprice=request.getParameter("mprice");
	String status=request.getParameter("status");
	int updateProduct=DatabaseConnection.insertUpdateFromSqlQuery("update tblproduct set name='"+pname+"',price='"+price+"',description='"+description+"',mrp_price='"+mprice+"',active='"+status+"' where id='"+id+"'");
	if(updateProduct>0){
		response.sendRedirect("admin-view-product.jsp");
	}else{
		response.sendRedirect("admin-view-product.jsp");
	}
%>