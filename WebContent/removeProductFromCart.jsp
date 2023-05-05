<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<%
	int productId = Integer.parseInt(request.getParameter("productId"));
	int removeCartProduct = DatabaseConnection.insertUpdateFromSqlQuery("delete from tblcart where product_id='" + productId+ "' and customer_id='" + session.getAttribute("id") + "'");
	if (removeCartProduct > 0) {
	response.sendRedirect("checkout.jsp");
	} else {
	response.sendRedirect("checkout.jsp");
	}
%>