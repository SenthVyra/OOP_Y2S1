<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>

<!-- Mirrored from p.w3layouts.com/demos/apr-2016/05-04-2016/smart_shop/web/checkout.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 23 Jul 2020 05:57:57 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<head>
<title>Online Shopping System</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Smart Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 
















</script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="js/simpleCart.min.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<script src="js/jquery.easing.min.js"></script>
<script src="jquery-3.2.1.min.js"></script>
</head>
<body>
	<script
		src='../../../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
	<script
		src="../../../../../../m.servedby-buysellads.com/monetization.js"
		type="text/javascript"></script>
	<script>
		(function() {
			if (typeof _bsa !== 'undefined' && _bsa) {
				// format, zoneKey, segment:value, options
				_bsa.init('flexbar', 'CKYI627U', 'placement:w3layoutscom');
			}
		})();
	</script>
	<script>
		(function() {
			if (typeof _bsa !== 'undefined' && _bsa) {
				// format, zoneKey, segment:value, options
				_bsa.init('fancybar', 'CKYDL2JN', 'placement:demo');
			}
		})();
	</script>
	<script>
		(function() {
			if (typeof _bsa !== 'undefined' && _bsa) {
				// format, zoneKey, segment:value, options
				_bsa.init('stickybox', 'CKYI653J', 'placement:w3layoutscom');
			}
		})();
	</script>
	<%
		if (session.getAttribute("name") != null && session.getAttribute("name") != "") {
	%>
	<!--<script>(function(v,d,o,ai){ai=d.createElement("script");ai.defer=true;ai.async=true;ai.src=v.location.protocol+o;d.head.appendChild(ai);})(window, document, "//a.vdo.ai/core/w3layouts_V2/vdo.ai.js?vdo=34");</script>-->
	<div id="codefund">
		<!-- fallback content -->
	</div>
	<script src="https://ethicalads.io/?ref=codefund" async="async"></script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async
		src='https://www.googletagmanager.com/gtag/js?id=UA-149859901-1'></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'UA-149859901-1');
	</script>

	<script>
		window.ga = window.ga || function() {
			(ga.q = ga.q || []).push(arguments)
		};
		ga.l = +new Date;
		ga('create', 'UA-149859901-1', 'demo.w3layouts.com');
		ga('require', 'eventTracker');
		ga('require', 'outboundLinkTracker');
		ga('require', 'urlChangeTracker');
		ga('send', 'pageview');
	</script>
	<script async src='../../../../../js/autotrack.js'></script>

	<meta name="robots" content="noindex">
<body>
	<link rel="stylesheet"
		href="../../../../../images/demobar_w3_4thDec2019.css">
	<!-- header -->
	<!-- //header -->
	<!-- header-bot -->
	<div class="header-bot">
		<div class="container">
			<div class="col-md-3 header-left">
				<h1>
					<a href="index-2.html"><img src="images/logo3.jpg"></a>
				</h1>
			</div>
			<div class="col-md-6 header-middle">
				<form action="searchProduct.jsp" method="post">
					<div class="search">
						<input type="search"  name="search" placeholder="Search Product" style="width: 680px;">
					</div>
					<div class="sear-sub">
						<input type="submit" value=" ">
					</div>
					<div class="clearfix"></div>
				</form>
			</div>
			<div class="col-md-3 header-right footer-bottom">
				<ul>
					<li><a href="admin-login.jsp" style="width: 150px;"> <i
							class="fas fa-user"></i>&nbsp;Admin Login
					</a></li>

				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //header-bot -->
	<!-- banner -->
	<div class="ban-top">
		<div class="container">
			<div class="top_nav_left">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1"
								aria-expanded="false">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<jsp:include page="header.jsp"></jsp:include>
					</div>
				</nav>
			</div>
			<div class="top_nav_right">
				<div class="cart box_1">
					<a href="checkout.jsp"> <%
 							ResultSet resultCount = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcart where customer_id='" + session.getAttribute("id") + "'");
 							resultCount.next();
							 int count = resultCount.getInt(1);
 						%>
						<h3>
							<div class="total">
								<i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
								(
								<%=count%>
								items )
							</div>

						</h3>

					</a>
					<p>
						<a href="javascript:;" class="simpleCart_empty">My Cart</a>
					</p>

				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //banner-top -->
	<!-- banner -->
	<div class="page-head">
		
	</div>
	<!-- //banner -->
	<!---728x90--->

	<!-- check out -->
	<div class="checkout">
		<div class="container">
			<h3>My Orders</h3>
			<div class="table-responsive">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>SR.No</th>
							<th>Order No</th>
							<th>Product</th>
							<th>Quantity</th>
							<th>MRP($)</th>
							<th>Selling Price($)</th>
							<th>Total Price($)</th>
							<th>Order Date</th>
							<th>Status</th>
						</tr>
					</thead>
					<%
						int index = 0;
						ResultSet totalProduct = DatabaseConnection
							.getResultFromSqlQuery("select * from tblorders where customer_name='" + session.getAttribute("name") + "' ");
						while (totalProduct.next()) {
						index++;
					%>
					<tr class="rem1">
						<td class="invert"><%=index%></td>
						<td class="invert"><%=totalProduct.getInt(18)%></td>
						<td class="invert"><img src="D:/Work-place/Grocery Ordering/WebContent/uploads/<%=totalProduct.getString(9)%>" style="width: 150px; height: 100px;"><br><%=totalProduct.getString(10)%></td>
						<td class="invert"><%=totalProduct.getString(11)%></td>
						<td class="invert"><del><%=totalProduct.getString(12)%></del></td>
						<td class="invert"><%=totalProduct.getString(13)%></td>
						<td class="invert"><%=totalProduct.getString(14)%></td>
						<td class="invert"><%=totalProduct.getString(16)%></td>
						<%
							if (totalProduct.getString(15).equals("Deliver")) {
						%>
						<td><span class="label label-success"><strong>Delivered</strong></span></td>
						<%
							} else {
						%>
						<td><span class="label label-danger"><strong>Pending</strong></span></td>
						<%
							}
						%>
					</tr>
					<%
						}
					%>
					<script>
						$('.value-plus').on(
								'click',
								function() {
									var divUpd = $(this).parent()
											.find('.value'), newVal = parseInt(
											divUpd.text(), 10) + 1;
									divUpd.text(newVal);
								});

						$('.value-minus').on(
								'click',
								function() {
									var divUpd = $(this).parent()
											.find('.value'), newVal = parseInt(
											divUpd.text(), 10) - 1;
									if (newVal >= 1)
										divUpd.text(newVal);
								});
					</script>
				</table>
			</div>
		</div>
	</div>
	<!-- //check out -->
	<!---728x90--->
	<div class="header">
		<div class="container">
			<ul>
				<li><span class="glyphicon glyphicon-time" aria-hidden="true"></span>Free
					and Fast Delivery</li>
				<li><span class="glyphicon glyphicon-shopping-cart"
					aria-hidden="true"></span>Free shipping On all orders</li>
				<li><span class="glyphicon glyphicon-envelope"
					aria-hidden="true"></span><a href="mailto:info@example.com">info@example.com</a></li>
			</ul>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<%
		} else {
	response.sendRedirect("index.jsp");
	}
	%>
</body>
</html>
