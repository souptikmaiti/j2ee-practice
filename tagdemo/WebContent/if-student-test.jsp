<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.tagdemo.jsp.Student, java.util.*" %>

<%

	// create sample data.... normally provided by MVC
	
	
	List<Student> data = new ArrayList<>();

	data.add(new Student("John", "Doe", false));
	data.add(new Student("Maxwell", "Johnson", false));
	data.add(new Student("Mary", "Public", true));

	pageContext.setAttribute("allStudents", data);

%>

<html>

<body>

	<table border="1">
	
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Gold Customer</th>
		</tr>
	
		<c:forEach var="student" items="${allStudents}">
			<tr>
				<td>${student.fName}</td>
				<td>${student.lName}</td>
				<td>
					<c:if test="${student.goldCustomer}">
						Special Discount
					</c:if>
					<c:if test="${not student.goldCustomer}">
						-
					</c:if>
				</td>
			</tr>
		</c:forEach>
	
	</table>

</body>
</html>