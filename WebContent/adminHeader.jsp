<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<section class="menu-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="navbar-collapse collapse ">
					<ul id="menu-top" class="nav navbar-nav navbar-right">
						<li><a href="dashboard.jsp">Home</a></li>
						<li><a href="#" class="dropdown-toggle" id="ddlmenuItem"
							data-toggle="dropdown">Product<i class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu" role="menu"
								aria-labelledby="ddlmenuItem">
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="admin-view-product.jsp">View Products</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="admin-add-product.jsp">Add Product</a></li>
							</ul></li>

						<li><a href="#" class="dropdown-toggle" id="ddlmenuItem"
							data-toggle="dropdown">Order <i class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu" role="menu"
								aria-labelledby="ddlmenuItem">
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="admin-all-orders.jsp">View All Orders</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="admin-pending-orders.jsp">View Pending Orders</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="admin-delivered-orders.jsp">View Delivered Orders</a></li>
							</ul></li>
						<li><a href="#" class="dropdown-toggle" id="ddlmenuItem"
							data-toggle="dropdown">Customer <i class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu" role="menu"
								aria-labelledby="ddlmenuItem">
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="admin-view-customers.jsp">View Customers</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="admin-view-contacts.jsp">View Contacts</a></li>
							</ul></li>

						<li><a href="#" class="dropdown-toggle" id="ddlmenuItem"
							data-toggle="dropdown"><font color="#ff8c00"><%=session.getAttribute("uname")%>&nbsp;<i
								class="fa fa-angle-down"></i></font></a>
							<ul class="dropdown-menu" role="menu"
								aria-labelledby="ddlmenuItem">
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="admin-my-account.jsp">My Accounts</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="admin-change-own-password.jsp">Change Password</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>