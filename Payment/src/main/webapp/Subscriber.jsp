<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,
	initial-scale=1.0">
<title>Document</title>
<link href="Subscriber.css" rel="stylesheet">
<link
	href="https://stackpath.bootstrapcdn.com/
		font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PV1G0fQNHSOD
		2xbE+QkPXCAFINEevoEH3S10sibVCOQVnN"
	crossorigin="anonymous">
</head>
<body>

	<div class="wrapper">
		<h2>Payment Form</h2>
		<form action="Pay" method ="post">
			<h4>Account</h4>
			<div class="input-group">
				<div class="input-box">
					<input type="text" name="firstname" placeholder="First Name" required>
					<i class="fa fa-user"> </i>
				</div>
				<div class="input-box">
					<input type="text" name="lastname" placeholder="Last Name" required>
						 <i class="fa fa-user"></i>
				</div>
			</div>

			<div class="input-group">
				<div class="input-box">
					<input type="email" name="email" placeholder="Email" required>
						 <i class="fa fa-envelope"></i>
				</div>
			</div>

			<div class="input-group">
				<div class="input-box dd">
					<h4>Date of Birth</h4>
					<input type="text" name="dd" placeholder="dd" required>
					<input type="text" name="mm" placeholder="mm" required>
					<input type="text" name="yyyy" placeholder="yyyy" required>
					
				</div>
				<div class="input-box">
					<h4>Gender</h4>
					<input type="radio" id="b1" name="gender" checked class="radio">
					<label for="b1">M</label>
					<input type="radio" id="gender" name="gender" class="radio">
					<label for="gender">F</label>
				</div>
			</div>

			<div class="input-group">
				<div class="input-box">
					<h4>Payment Details</h4>
					<input type="radio" name="pay" id="bc1" checked class="radio">
					<label for="bc1"><span><i class="fa fa-cc-visa"></i>Credit Card</span></label>
					<input type="radio" name="pay" id="bc2" class="radio">
					<label for="bc2"> <span><i class="fa fa-cc-paypal"></i> Paypal </span></label>
				</div>
			</div>

			<div class="input-group">
				<div class="input-box">
					<input type="text" name="CdNum" placeholder="Card Number" required>
					<i class="fa fa-credit-card"></i>
				</div>
			</div>

			<div class="input-group">
				<div class="input-box">
					<input type="text" name="CvcNum" placeholder="CvcNum" required>
					<i class="fa fa-credit-card"></i>
				</div>
				<div class="input-box">
					<select>
						<option>01</option>
						<option>02</option>
						<option>03</option>
						<option>04</option>
						<option>05</option>
						<option>06</option>
						<option>07</option>
						<option>08</option>
						<option>09</option>
						<option>10</option>
						<option>11</option>
						<option>12</option>
						<option>13</option>
						<option>14</option>
						<option>15</option>
						<option>16</option>
						<option>17</option>
						<option>18</option>
						<option>19</option>
						<option>20</option>
						<option>21</option>
						<option>22</option>
						<option>23</option>
						<option>24</option>
						<option>25</option>
						<option>26</option>
						<option>27</option>
						<option>28</option>
						<option>29</option>
						<option>30</option>
						<option>31</option>

					</select>
					<select>
					
						<option>jan</option>
						<option>feb</option>
						<option>mar</option>
						<option>apr</option>
						<option>may</option>
						<option>jun</option>
						<option>jul</option>
						<option>aug</option>
						<option>sep</option>
						<option>oct</option>
						<option>nov</option>
						<option>dec</option>
					</select>
					<select>
						<option>2020</option>
						<option>2021</option>
						<option>2022</option>
					</select>
				</div>
			</div>
			<div class="input-group">
				<div class="input-box">
					<button type="submit" value="Pay Now" name="Pay Now">PAY NOW</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>