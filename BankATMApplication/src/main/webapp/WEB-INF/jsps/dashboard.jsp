<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<style>
.headerClass {
	background-color: black;
	color: white;
	padding: 12px;
}

.dropbtn {
	color: white;
	padding: 16px;
	font-size: 15px;
	border: none;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: Cornflowerblue;
	min-width: 113px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: pink;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: black;
}
</style>
</head>

<body style="background-color: #C9BE62">
	<form class="">
		<div class="headerClass">
			<div class="row">
				<div class="col-md-2">
					<b> <a href="/profileOpener" style="color: white">MY PROFILE</a>
				</div>
				<div class="col-md-2">
					<a href="/viewBranches" style="color: white">VIEW BRANCHES</a>
				</div>
				<div class="col-md-2">
					<div class="dropdown">
						<a class="dropbtn" href="#" style="color: white">BANKING</a>
						<div class="dropdown-content">
							<a href="/depositeOpener">DEPOSITE</a> <a href="/withdrawOpener">WITHDRAW</a>
							<a href="/viewBalance">VIEW BALANCE</a> <a href="/miniStatement">MINI-STATEMENT</a>
							<a href="/transferOpener">TRANSFER</a> <a href="/LoanEmiOpener">PAY LOAN EMI</a>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="dropdown">
						<a class="dropbtn" href="#" style="color: white">LOAN</a>
						<div class="dropdown-content">
							<a href="/personalOpener">PERSONAL</a> <a href="/vehicle">VEHICLE</a>
							<a href="/eligibility">ELIGIBILITY</a>
							<a href="/loanTransactions">LOAN STATEMENTS</a>
						</div>
					</div>
				</div>
				<div class="col-md-1">
					<a href="/aboutus" style="color: white">ABOUT US</a>
				</div>
				<div class="col-md-2">
					<a href="/contactus" style="color: white">CONTACT US</a>
				</div>
				<div class="col-md-1">
					<a href="/" style="color: white">LOGOUT</a>
				</div>
				</b>
			</div>
			<div class="">
			</div>
		</div>
		<c:if test="${loanNotAvailable != 'NULL'}">
		<h4 style="color: red">${loanNotAvailable}</h4>
		</c:if>
		<c:if test="${notApplicable != 'NULL'}">
		<h4 style="color: red">${notApplicable}</h4>
		</c:if>
		<c:if test="${allreadyLoan != 'NULL'}">
		<h4 style="color: red">${allreadyLoan}</h4>
		</c:if>
		<c:if test="${inSufficientBalance != 'NULL'}">
		<h4 style="color: red">${inSufficientBalance}</h4>
		</c:if>
		
	</form>
</body>
</html>