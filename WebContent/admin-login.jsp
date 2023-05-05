<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<%@ page import="com.admin.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>
	<div class="navbar navbar-inverse set-radius-zero">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				 
			</div>
		</div>
	</div>
	<h1>MY-ADMIN</h1>
	
	<section class="menu-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="navbar-collapse collapse ">
					<ul id="menu-top" class="nav navbar-nav navbar-right">
						<li><a href="index.jsp">Home</a></li>
						<li><a href="admin-login.jsp">Admin Login</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</section>
	<%
		String captcha = null;
		Connection connection = DatabaseConnection.getConnection();
		Statement statement = connection.createStatement();
		ResultSet resultset = statement.executeQuery("select captcha from tblcaptcha");
		if (resultset.next()) {
		captcha = resultset.getString(1);
		}
	%>
	<div class="content-wrapper">
		<div class="container">
			<div class="row pad-botm">
				<div class="col-md-12">
					<h4 class="header-line">ADMIN DASHBOARD</h4>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12"></div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="panel panel-danger">
						<div class="panel-heading">Admin Login</div>
						<div class="panel-body">
							<%
								String credential = (String) session.getAttribute("credential");
								if (credential != null) {
								session.removeAttribute("credential");
							%>
							<div class="alert alert-danger" id="danger">You have enter
								wrong credentials.</div>
							<%
								}
							%>
							<%
								String captchaCode = (String) session.getAttribute("verificationCode");
								if (captchaCode != null) {
								session.removeAttribute("verificationCode");
							%>
							<div class="alert alert-info" id="info">You have enter
								wrong verification code.</div>
							<%
								}
							%>
							<form action="AdminLogin" method="post">
								<div class="form-group">
									<label>Email Id.:</label> <input type="text" name="email"
										class="form-control">
								</div>
								<div class="form-group">
									<label>Password.:</label> <input type="password" name="upass"
										class="form-control">
								</div>
								<div class="form-group">
									<label>Verification code : </label> <input type="text"
										class="form-control1" name="vercode" maxlength="5"
										autocomplete="off" required style="height: 25px;" />&nbsp;<input
										type="text" name="captcha" value="<%=captcha%>" disabled
										style="height: 25px; width: 80px;">

								</div>
								<input type="submit" value="Admin Login" class="btn btn-primary">
								<input type="reset" value="Clear" class="btn btn-danger">
							</form>
						</div>
					</div>
				</div>
			</div>
			<!--/.ROW-->
		</div>
	</div>
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
	<script type="text/javascript">
		$(function() {
			$('#success').delay(3000).show().fadeOut('slow');
		});

		$(function() {
			$('#danger').delay(3000).show().fadeOut('slow');
		});

		$(function() {
			$('#warning').delay(3000).show().fadeOut('slow');
		});

		$(function() {
			$('#info').delay(3000).show().fadeOut('slow');
		});
	</script>
</body>

</html>