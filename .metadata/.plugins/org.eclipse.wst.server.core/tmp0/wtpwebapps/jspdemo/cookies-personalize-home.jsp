<%@ page import="java.net.URLDecoder" %>

<html>
<body>

<%
	String favLang = "Java";
	Cookie[] cookies = request.getCookies();

	if (cookies != null) {
		for (Cookie ck : cookies) {
			if (ck.getName().equals("myApp.favLang")) {
				favLang = URLDecoder.decode(ck.getValue(), "UTF-8");
				break;
			}
		}
	}

%>

Some Good books on : <%= favLang %> <br/> <br/>

<ul>

<li> blah blah </li>
<li> blah blah </li>

</ul>

<br><br>

Some Jobs on : <%= favLang %> <br/> <br/>

<ul>

<li> blah blah </li>
<li> blah blah </li>

</ul>

<br><br>

<a href="cookies-personalize-form.html">Change Your Favorite Language</a>

</body>
</html>