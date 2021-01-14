<html>

<head><title>Student Confirmation</title></head>
<body>

The student is confirmed:  <%= request.getParameter("firstName") %> 
	<%= request.getParameter("lastName") %> <%= "Country: " + request.getParameter("country") %>
<br/><br/>
Getting Student's info by shortcut: ${param.firstName} ${param.lastName} Country: ${param.country}

<br/><br/>

Student's Favorite Programming Language: ${param.favLang}

<br/><br/>

<%! String[] colors; %>
Student's Favorite Colors are: 

<ul>
<%
	colors = request.getParameterValues("favColor");
	if (colors != null) {
		for(int i=0; i< colors.length; i++) {
			out.println("<li>" + colors[i] + "</li>");
		}
	}
%>
</ul>

</body>


</html>