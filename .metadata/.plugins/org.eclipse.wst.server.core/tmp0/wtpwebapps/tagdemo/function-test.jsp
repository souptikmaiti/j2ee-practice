<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<html>

<body>

	<c:set var="data" value="Hello World" />
	
	Length of String <b>${data}</b>: ${fn:length(data)}
	
	<br/><br/>
	
	Upper case of String <b>${data}</b>: ${fn:toUpperCase(data)}
	
	<br/><br/>
	
	Does the String <b>${data}</b> starts with <b>Hello</b>?: ${fn:startsWith(data, "Hello")}

</body>


</html>