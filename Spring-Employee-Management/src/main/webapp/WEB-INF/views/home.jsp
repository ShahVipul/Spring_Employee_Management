<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>VS SOFTWARES</title>
<%@include file="imports.jsp"%>
</head>
<body>
	<%@include file="header.jsp"%>

	<div class="container">

		<div class="page-header">
			<center><h1>THE VS SOFTWARES EMPLOYEES MANAGEMENT </h1></center>
		</div>

		<center><table class="table table-striped">
			<tr>
				<th>Employee ID</th>
				<th>User Name</th>
				<th>First name</th>
				<th>Last name</th>
				<th>Email</th>
				<th>Age</th>
				<th>Action</th>
				
			</tr>

			<c:forEach items="${userList}" var="user" varStatus="ps">
				<tr>
					<td><c:out value="${user.userId}" /></td>
					<td><c:out value="${user.username}" /></td>
					<td><c:out value="${user.firstname}" /></td>
					<td><c:out value="${user.lastname}" /></td>
					<td><c:out value="${user.email}" /></td>
					<td><c:out value="${user.age}" /></td>
					
					<td><a
						href="${pageContext.request.contextPath}/user/${user.username}"><button
								type="submit" class="btn btn-default">Open</button></a></td>
					
				</tr>
			</c:forEach>
		</table>
</center>
	<center>	
	<form class="form col-md-4" method="POST"
			action="${pageContext.request.contextPath}/createUser">
			<h4>Create User</h4>
			<div class="form-group">
				<input class="form-control" type="text" name="username"
					placeholder="Enter User Name">
			</div>
			<div class="form-group">
				<input class="form-control" type="text" name="firstname"
					placeholder="First Name">
			</div>
			<div class="form-group">
				<input class="form-control" type="text" name="lastname"
					placeholder="Last Name">
			</div>
			<div class="form-group">
				<input class="form-control" type="text" name="age" placeholder="Provide Age">
			</div>
			<div class="form-group">
				<input class="form-control" type="text" name="email"
					placeholder="Your Email ID">
			</div>
			<button type="submit" class="btn btn-success">Submit</button>
		</form>
</center>


	</div>

</body>
</html>
