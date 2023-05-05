<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
					<h1><b><i>Grocery.lk</i></b></h1></a>
				</h1>
			</div>
			<div class="col-md-6 header-middle">
				<form action="searchProduct.jsp" method="post">
					<div class="search">
						<input type="search" name="search" placeholder="Search Product"
							style="width: 680px;">
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
			<h3>My Shopping Bag</h3>
			<%
				int index = 0;
				int paymentId = 101;
				ResultSet rsCountCheck = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcart where customer_id='" + session.getAttribute("id") + "'");
				rsCountCheck.next();
				int cartItem = rsCountCheck.getInt(1);
				System.out.println("cartItem  " + cartItem);
				if (cartItem > 0) {
			%>
			<div class="table-responsive">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>SR.No</th>
							<th>Product</th>
							<th>Quantity</th>
							<th>MRP(Rs)</th>
							<th>Selling Price(Rs)</th>
							<th>Total Price(Rs)</th>
							<th>Action</th>
						</tr>
					</thead>
					<%
						ResultSet totalProduct = DatabaseConnection.getResultFromSqlQuery("select tblproduct.image_name,tblproduct.name,tblcart.quantity,tblcart.mrp_price,tblcart.discount_price,tblcart.total_price,tblcart.product_id from tblproduct,tblcart where tblproduct.id=tblcart.product_id and customer_id='"
							+ session.getAttribute("id") + "' ");
						while (totalProduct.next()) {
						index++;
					%>
					<tr class="rem1">
						<td class="invert"><%=index%></td>
						<td class="invert"><img
							src="D:/Work-place/Grocery Ordering/WebContent/uploads/<%=totalProduct.getString(1)%>" alt=""
							class="pro-image-front" style="width: 150px; height: 100px;"><br><%=totalProduct.getString(2)%></td>
						<td class="invert">
							<div class="quantity">
								<div class="quantity-select">
									<form action="UpdateProductQuantity" method="post">
										<input type="hidden" value="<%=totalProduct.getInt(7)%>"
											name="productId"> <input type="number"
											name="quantity" value="<%=totalProduct.getInt(3)%>"
											style="width: 50px; height: 35px;">&nbsp;<input
											type="submit" class="btn btn-danger" value="Change" >
									</form>
								</div>
							</div>
						</td>
						<td class="invert"><del><%=totalProduct.getString(4)%>&nbsp;Rs.
							</del></td>
						<td class="invert"><%=totalProduct.getString(5)%>&nbsp;Rs.</td>
						<td class="invert"><%=totalProduct.getString(6)%>&nbsp;Rs.</td>
						<td class="invert"><a
							href="removeProductFromCart.jsp?productId=<%=totalProduct.getInt(7)%>"
							onclick="return confirm('Are you sure you want to remove this item from cart?');"><i
								class="fa fa-trash"></i></a></td>
					</tr>
					<%
						}
					%>
					<%
						double finalBill = 0.0;
						ResultSet totolAmount = DatabaseConnection.getResultFromSqlQuery("select sum(total_price), sum(mrp_price) from tblcart where customer_id='" + session.getAttribute("id") + "' ");
						if (totolAmount.next()) {
						finalBill = totolAmount.getInt(1);
						}
					%>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td colspan="2"><strong><center>
								Total Amount.:&nbsp;<%=finalBill%>
									Rs.</center></strong>
						</td>
					</tr>
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
			<div>
				<br> <br> <br>
			</div>
			<form action="GetProductsOrder" method="post">
				<h4>
					<font color="blue"><strong>Billing Address</strong></font>
				</h4>
				<br>
				<h4 class="text-justify">
					<font color="red">Note: Now only cash on delivery payment
						mode is available.</font>
				</h4>
				<br>
				<%
					ResultSet userInfoResult = DatabaseConnection.getResultFromSqlQuery("select * from tblcustomer where id='"+ session.getAttribute("id") + "' and name='" + session.getAttribute("name") + "'");
					if (userInfoResult.next()) {
				%>
				<div>
					<div class="form-group">
						<label>Your Name</label> <input type="text" name="name"
							value="<%=userInfoResult.getString("name")%>" placeholder=""
							required="" style="width: 1135px; height: 40px;"
							class="form-control" readonly>
					</div>
					<div class="form-group">
						<label>Phone Number</label> <input type="text" name="phone"
							value="<%=userInfoResult.getString("phone")%>" placeholder=""
							required="" style="width: 1135px; height: 40px;"
							class="form-control" readonly>
					</div>
					<div class="form-group">
						<label>Email Id</label> <input type="text" name="email"
							value="<%=userInfoResult.getString("email")%>" placeholder=""
							required="" style="width: 1135px; height: 40px;"
							class="form-control" readonly>
					</div>
					<div class="form-group">
						<label>Address</label> <input type="text" name="address"
							value="<%=userInfoResult.getString("address")%>" placeholder=""
							required="" style="width: 1135px; height: 100px;"
							class="form-control" readonly>
					</div>
					<div class="form-group">
						<label>Pin Code</label> <input type="text" name="pincode"
							value="<%=userInfoResult.getString("pin_code")%>" placeholder=""
							required="" style="width: 1135px; height: 40px;"
							class="form-control" readonly>
					</div>
					<div class="form-group">
						<label>Select Address Type</label> <select name="addressType"
							value="" style="width: 1135px; height: 40px;"
							class="form-control">
							<option>Home</option>
							<option>Office</option>
							<option>Commercial</option>
						</select>
					</div>
					<div class="form-group">
						<label>Select Payment Mode</label> <select name="payment"
							style="width: 1135px; height: 40px;" class="form-control">
							<option selected="selected">COD</option>
							<option disabled="disabled">Credit Card</option>
							<option disabled="disabled">Debit Card</option>
							<option disabled="disabled">Online Banking</option>
							<option disabled="disabled">UPI Id</option>
						</select>
					</div>
					<div>
						<%
							ResultSet rsPaymentId = DatabaseConnection.getResultFromSqlQuery("select max(payment_id) from tblorders");
							if (rsPaymentId.next()) {
							paymentId = rsPaymentId.getInt("max(payment_id)");
							paymentId++;
							}
						%>
						<input type="text" name="payment_id" value="<%=paymentId%>" hidden>
						<input type="submit" value="Buy Products" class="btn btn-success"
							onclick="return confirm('Are you sure Do you want to buy this order?');">
					</div>
				</div>
			</form>
			<%
				}
			%>

			<%
				} else {
			%>
			<center>
				<strong>Thanks for giving order.</strong>&nbsp;<a
					href="printInvoice.jsp?paymentId=<%=paymentId%>">Print Order
					Bill</a>
			</center>
			<%
				if (index == 0) {
			%>
			<center>
				<strong>There is no item(s) in your Cart.&nbsp;<a href="index.jsp">Shop Now</a></strong>
			</center>
			<%
				}
			%>
			<%
				}
			%>
			<div class="checkout-left">
				<div class="checkout-right-basket animated wow slideInRight"
					data-wow-delay=".5s">
					<a href="index.jsp"><span class="glyphicon glyphicon-menu-left"
						aria-hidden="true"></span>Back To Shopping</a>
				</div>
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
