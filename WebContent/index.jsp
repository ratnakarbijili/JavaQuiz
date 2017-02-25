<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>My Manager</title>
<link rel = "stylesheet" href = "style.css">

</head>

<body bgcolor = lightgrey>
	
	<form action = time-manager.jsp>
	<button id = signup  class="button submit" type="submit" name = tmanager>Time Manager</button>
	<button id = signup  class="button submit" type="submit" name = mmanager>Money Manager</button>
	<button id = signup  class="button submit" type="submit" name = tmmanager>Time-Money Manager</button>
	</form>
	
	<br>
	
	<%
	session.invalidate();
	%>

</body>
</html>