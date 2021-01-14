<%@ page import="java.net.URLEncoder"  %>

<html>

<head><title>Confirmation</title></head>
<body>

<%
	String lang = request.getParameter("favLang");

	Cookie ck = new Cookie("myApp.favLang", URLEncoder.encode(lang, "UTF-8"));
	
	ck.setMaxAge(7*24*60*60); // a week in seconds

	response.addCookie(ck);

%>

 Your Selected Language: <%=lang %>
 
 <br/><br/>
 
 <a href="cookies-personalize-home.jsp">Return to homepage.</a>

</body>
</html>