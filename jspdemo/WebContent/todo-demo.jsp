<%@ page import="java.util.*" %>

<html>
<body>

<!-- Step1: create HTML form -->
<!-- Step2: Add items to "To Do" list -->
<!-- Step3: Display all "To Do" items from session -->


<form action="todo-demo.jsp">

	Add To Do: <input type="text" name="toDo" />

	<input type="submit" value="Submit"/>

</form>

	<!-- NOT WORKING -->
     
	<%
     	List<String> toDoList = null;

     	if (session.getAttribute("toDoList") == null) {
     		session.setAttribute("toDoList", new ArrayList<String>());

     	} else {
     		toDoList = (List<String>) session.getAttribute("toDoList");
     		String task = request.getParameter("toDo");
     		if (task != null && !task.trim().isEmpty() && !task.trim().equals(toDoList.get(toDoList.size()-1)))
     			toDoList.add(task);
     	}
     	%>
	
	<hr>
<b>To List Items:</b> <br/>
    
    <ol>
    	<%
    	
    	if (toDoList != null)
	    	for(String item: toDoList) {
	    		out.println("<li>" + item + "</li>");
	    	}
    	
    	
    	%>
    
    </ol>

</body>

</html>