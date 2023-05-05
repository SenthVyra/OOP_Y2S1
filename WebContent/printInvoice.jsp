<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!doctype html>
<html class="no-js" lang="">
<head>

<title>Online Shopping System</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
<link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
	<%
		if (session.getAttribute("name") != null && session.getAttribute("name") != "") {
	%>
	<div id="exampl">
			<br><center>
			<table border="2" cellspacing="2" cellpadding="2" width="80%">
				<tr>
					<td colspan="7"><strong><center>Shopping Order Receipt</center></strong></td>
				</tr>
				<%
					int isRepeat = 0;
					int srNo=0;
					String totalBill=null;
					String customerName = (String) session.getAttribute("name");
			
					ResultSet totalBillResult=DatabaseConnection.getResultFromSqlQuery("select sum(product_total_price) from tblorders where customer_name='" + customerName + "' and payment_id='"+session.getAttribute("paymentId")+"'");
					totalBillResult.next();
					totalBill=totalBillResult.getString(1);
					
					ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblorders where customer_name='" + customerName + "' and payment_id='"+session.getAttribute("paymentId")+"'");
					while (resultset.next()) {	
						srNo++;
				%>
				<%
					if (isRepeat == 0) {		
				%>

				<tr>
					<th colspan="3">Customer Name</th>
					<td colspan="4"><%=resultset.getString("customer_name")%></td>
				</tr>
				<tr>
					<th colspan="3">Address</th>
					<td colspan="4"><%=resultset.getString("address")%></td>
				</tr>
				<tr>
					<th colspan="3">Email Id</th>
					<td colspan="4"><%=resultset.getString("email_id")%></td>
				</tr>
				<tr>
					<th colspan="3">Phone No</th>
					<td colspan="4"><%=resultset.getString("mobile_number")%></td>
				</tr>
				<tr>
					<th colspan="3">Pin Code</th>
					<td colspan="4"><%=resultset.getString("pincode")%></td>
				</tr>
				<tr>
					<th colspan="3">Order Date & Time</th>
					<td colspan="4"><%=resultset.getString("order_date")%></td>
				</tr>
				<tr>
					<th>Sr No</th>
					<th>Product Order No</th>
					<th>Product</th>
					<th>Quantity</th>
					<th>MRP Price</th>
					<th>Selling Price</th>
					<th>Total Price</th>
				</tr>
				<%
					isRepeat++;
				}
				%>
				<tr>
					<td><%=srNo%></td>
					<td><%=resultset.getString("order_no")%></td>
					<td><%=resultset.getString("product_name")%></td>
					<td><%=resultset.getString("quantity")%></td>
					<td><del><%=resultset.getString("product_price")%></del></td>
					<td><%=resultset.getString("product_selling_price")%></td>
					<td><%=resultset.getString("product_total_price")%></td>
				</tr>
				<%
					}
				%>
				<tr>
					<th colspan="1">Remark</th>
					<td colspan="1">NA</td>
					<td colspan="1" style="text-align: center; cursor: pointer"><i
						class="fa fa-print fa-2x" aria-hidden="true"
						OnClick="CallPrint(this.value)"></i></td>
					<td colspan="4"><strong><center>Total Amount To Be Paid.:&nbsp;<font color="blue"><%=totalBill %></font></center></strong></td>
				</tr>
				</center>
			</table>
			<center>
			<div class="checkout-left">
				<div class="checkout-right-basket animated wow slideInRight"
					data-wow-delay=".5s">
					<a href="index.jsp"><span class="glyphicon glyphicon-menu-left"
						aria-hidden="true"></span>Back To Shopping</a>
			</div>
			</center>
		</div>
	<script>
		function CallPrint(strid) {
			var prtContent = document.getElementById("exampl");
			var WinPrint = window
					.open('', '',
							'left=0,top=0,width=800,height=900,toolbar=0,scrollbars=0,status=0');
			WinPrint.document.write(prtContent.innerHTML);
			WinPrint.document.close();
			WinPrint.focus();
			WinPrint.print();
			WinPrint.close();
		}
	</script>
	<%
		} else {
	response.sendRedirect("checkout.jsp");
	}
	%>
</body>
</html>