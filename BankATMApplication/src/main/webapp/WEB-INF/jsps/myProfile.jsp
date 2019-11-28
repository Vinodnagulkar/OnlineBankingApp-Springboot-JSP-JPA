<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/jsps/dashboard.jsp" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.myclass {
	background-color: Cornflowerblue;
	color: white;
	padding: 12px;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: #C9BE62">
	<form class="" action="">

		<h3 style="color: black">My Profile:</h3>
		<hr>
		<table class="table">
			<thead>
				<tr style="color: black">
					<th>Firstname</th>
					<td><c:out value="${customerInfo.firstName}" /></td>
				</tr>
				<tr>
					<th>Lastname</th>
					<td><c:out value="${customerInfo.lastName}" /></td>
				</tr>
				<tr>
					<th>Mobile</th>
					<td><c:out value="${customerInfo.mobile}" /></td>
				</tr>
				<tr>
					<th>Email</th>
					<td><c:out value="${customerInfo.email}" /></td>
				</tr>
				<tr>
					<th>Address</th>
					<td><c:out value="${customerInfo.address}" /></td>
				</tr>
				<tr>
					<th>AadharNo</th>
					<td><c:out value="${customerInfo.aadharNo}" /></td>
				</tr>
				<tr>
					<th>PanNo</th>
					<td><c:out value="${customerInfo.panNo}" /></td>
				</tr>
				<tr>
					<th>Email</th>
					<td><c:out value="${customerInfo.email}" /></td>
				</tr>
				<tr>
					<td><a href="updateCustomer?id=${customerInfo.cid}"
						class="btn btn-info btn-sm"><span
							class="glyphicon glyphicon-edit"></span> Update</a></td>
							<td><a href="backToDashboard"
						class="btn btn-info btn-sm"><span
							class="glyphicon glyphicon-edit"></span> Back</a></td>
				</tr>


			</thead>
			<tbody>

				<%-- <td><a href="deletecustomerInfoent?id=${customerInfo.id}"
								class="btn btn-info btn-sm"><span
									class="glyphicon glyphicon-remove"></span> Delete</a></td>
						</tr>
					 --%>
		</table>

	</form>
</body>
</html>