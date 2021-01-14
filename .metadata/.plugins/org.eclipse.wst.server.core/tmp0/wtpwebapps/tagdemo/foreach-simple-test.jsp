<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%

	// creatw sample data.... normally provided by MVC
	
	
	String[] cities = {"Tokiyo", "Mumbai", "New York", "London", "Paris"};

	pageContext.setAttribute("myCities", cities);

%>

<html>

<body>

	<c:forEach var="city" items="${myCities}">
		${city} <br/>
	</c:forEach>

</body>
</html>