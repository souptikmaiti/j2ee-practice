<html>
<body>

<h3>JSP Declaration Demo</h3>

<%! 
public String makeLower(String str) {
	return str.toLowerCase();	
}
%>

Hello World to Lower: <%= makeLower("HELLO WORLD") %>
</body>
</html>