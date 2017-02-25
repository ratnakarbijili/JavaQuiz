<%@ page language="java" import="java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<link rel="stylesheet" href="style.css"> 
</head>
<body bgcolor = lightgrey>
<h1 align = center>Time Manager</h1>
<form action = AddTask>
<table id = adder>
<tr>
<td><input type = text placeholder="Enter task name" name = taskname size = 30> <br></td>
</tr>
<tr>
<td><input type = radio name = priority value = important checked>Important 
<input type = radio name = priority value = notimportant >Not Important<br></td>
</tr>
<tr>
<td><input type = radio name = urgency value = urgent checked >Urgent 
<input type = radio name = urgency value = noturgent >Not Urgent<br> </td>
</tr>
<tr>
<td><input type = "submit" name = submit value = add></td>
</tr>

</table>
</form>

<form action = time-manager.jsp>
<table id = delete>
<tr>
<td><input type = text placeholder="Enter task name" name = deletetask size = 30> <br></td>
</tr>

<tr>
<td><input type = "submit" name = submit value = delete></td>
</tr>

</table>
</form>

<%
int id = 0; 
try
{
	
	id = (int)session.getAttribute("id");
}
catch(Exception e)	{		}

ArrayList<String> list1 = (ArrayList<String>)session.getAttribute("list1");
ArrayList<String> list2 = (ArrayList<String>)session.getAttribute("list2");
ArrayList<String> list3 = (ArrayList<String>)session.getAttribute("list3");
ArrayList<String> list4 = (ArrayList<String>)session.getAttribute("list4");


	switch(id)
	{
	case 1:
	{
		if(list1 == null)
		{
			list1 = new ArrayList<String>();
			session.setAttribute("list1", list1);
		}
		
			String taskname = request.getParameter("taskname");
			if(taskname != null)
			{
				list1.add(taskname);
			}
		taskname = null;
		break;
	}
	case 2:
	{
		if(list2 == null)
		{
			list2 = new ArrayList<String>();
			session.setAttribute("list2", list2);
		}
			String taskname = request.getParameter("taskname");
			if(taskname != null)
			{
				list2.add(taskname);
			}
		break;
	}
	case 3:
	{
		if(list3 == null)
		{
			list3 = new ArrayList<String>();
			session.setAttribute("list3", list3);
		}
			String taskname = request.getParameter("taskname");
			if(taskname != null)
			{
				list3.add(taskname);
			}
		break;
	}
	case 4:
	{
		if(list4 == null)
		{
			list4 = new ArrayList<String>();
			session.setAttribute("list4", list4);
		}
			String taskname = request.getParameter("taskname");
			if(taskname != null)
			{
				list4.add(taskname);
			}
		break;
	}
	}
	
	try
	{
		String deletetask = request.getParameter("deletetask");
		if(deletetask!= null)
		{
			list1.remove(deletetask);
			list2.remove(deletetask);
			list3.remove(deletetask);
			list4.remove(deletetask);
			deletetask = null;
		}
	}
	catch(Exception e)
	{	}
%>

<table id = chart>
<tr>
<td id=side><b>To Do</b> </td>
<td id=side><b>&emsp;Urgent&emsp;</b> </td>
<td id=side><b> Not Urgent</b> </td>
</tr>

<tr>
<td id=side><b> Important </b> </td>
<td id=task>
<ol>
<%
if(list1 != null)
{
	for(int i = 0;i < list1.size();i++)
	{
		out.println("<li>"+list1.get(i)+"</li>");
	}
}
%>
</ol>
</td>

<td id=task>
<ol>
<%
if(list2 != null)
{
	for(int i = 0;i < list2.size();i++)
	{
		out.println("<li>"+list2.get(i)+"</li>");
	}
}
%>
</ol>
</td>
</tr>

<tr>
<td id=side><b> Not Important </b> </td>
<td id=task>
<ol>
<%
if(list3 != null)
{
	for(int i = 0;i < list3.size();i++)
	{
		out.println("<li>"+list3.get(i)+"</li>");
	}
}
%>
</ol>
</td>
<td id=task>
<ol>
<%
if(list4 != null)
{
	for(int i = 0;i < list4.size();i++)
	{
		out.println("<li>"+list4.get(i)+"</li>");
	}
}
%>
</ol>
</td>
</tr>

</table>


<form action = index.jsp>
<input type = submit value = reset>
</form>
</body>
</html>