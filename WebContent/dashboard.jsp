<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Mirrored from www.binarytheme.com/BTlivedemos/2014/08/29/horizontal-admin/ by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 14 Jul 2019 14:46:41 GMT -->
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta name="description" content="" />
<meta name="author" content="" />
<!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
<title>Online Shopping System</title>
<!-- BOOTSTRAP CORE STYLE  -->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FONT AWESOME STYLE  -->
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<!-- CUSTOM STYLE  -->
<link href="assets/css/style.css" rel="stylesheet" />
<!-- GOOGLE FONT -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />

</head>
<body>
<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
%>
	<div class="navbar navbar-inverse set-radius-zero">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				    <h1 ><b>Grocery.lk </b></h1>
					<h1 ><b>MY ADMIN </b></h1>
				</a>

			</div>

			<div class="right-div">
				<a href="admin-logout.jsp" class="btn btn-danger pull-right">LOG ME OUT</a>
			</div>
		</div>
	</div>
	<jsp:include page="adminHeader.jsp"></jsp:include>
	<!-- MENU SECTION END-->
	<div class="content-wrapper">
		<div class="container">
			<div class="row pad-botm">
				<div class="col-md-12">
					<h4 class="header-line">ADMIN DASHBOARD</h4>

				</div>

			</div>

			<div class="row">

				<div class="col-md-3 col-sm-3 col-xs-6">
					<div class="alert alert-info back-widget-set text-center">
						<i class="fa fa-history fa-5x"></i>
						<%
							ResultSet totalProduct=DatabaseConnection.getResultFromSqlQuery("select count(*) from tblproduct");
							totalProduct.next();
							int allProducts=totalProduct.getInt(1);
						%>
						<h3>
							<%=allProducts %>
						</h3>
						Total Products
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6">
					<div class="alert alert-success back-widget-set text-center">
						<i class="fa fa-users fa-5x"></i>
						<%
							ResultSet totalCustomer=DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcustomer");
							totalCustomer.next();
							int allCustomer=totalCustomer.getInt(1);
						%>
						<h3><%=allCustomer %></h3>
						Total Customers
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6">
					<div class="alert alert-warning back-widget-set text-center">
						<i class="fa fa-recycle fa-5x"></i>
						<%
							ResultSet totalOrders=DatabaseConnection.getResultFromSqlQuery("select count(*) from tblorders");
							totalOrders.next();
							int allOrders=totalOrders.getInt(1);
						%>
						<h3><%=allOrders %></h3>
						Total Orders
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6">
					<div class="alert alert-danger back-widget-set text-center">
						<i class="fa fa-briefcase fa-5x"></i>
						<%
							ResultSet totalContacts=DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcontact");
							totalContacts.next();
							int allContacts=totalContacts.getInt(1);
						%>
						<h3><%=allContacts %></h3>
						Total Contacts
					</div>
				</div>

			</div>
			
			
			
			
		</div>
	</div>
	<!-- CONTENT-WRAPPER SECTION END-->
	<jsp:include page="admin-footer.jsp"></jsp:include>
	<!-- FOOTER SECTION END-->
	<!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	<!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})
				(
						window,
						document,
						'script',
						'../../../../../../www.google-analytics.com/analytics.js',
						'ga');

		ga('create', 'UA-58127580-1', 'auto');
		ga('send', 'pageview');
	</script>
	<%
		} else {
	response.sendRedirect("admin-login.jsp");
	}
	%>
</body>
</html>
