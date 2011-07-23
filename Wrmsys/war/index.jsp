<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- The HTML 4.01 Transitional DOCTYPE declaration-->
<!-- above set at the top of the file will set     -->
<!-- the browser's rendering engine into           -->
<!-- "Quirks Mode". Replacing this declaration     -->
<!-- with a "Standards Mode" doctype is supported, -->
<!-- but may lead to some differences in layout.   -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="javax.jdo.PersistenceManager" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%-- @ page import="guestbook.Greeting" --%>
 <%--@ page import="guestbook.PMF" --%>

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
<%
    UserService userService = UserServiceFactory.getUserService();
    User user = userService.getCurrentUser();
    if (user != null) {
%>
	<meta http-equiv="REFRESH" content="0;url=/wrmsys">
<% } %>
    <link type="text/css" rel="stylesheet" href="/stylesheets/Wrmsys.css" />
    <title>Welcome to WRMSYS!</title>
  </head>

  <body>

<h1>Welcome to WRMSYS!</h1>

<%
    /**
    	UserService userService = UserServiceFactory.getUserService();
    	User user = userService.getCurrentUser();
    **/
    if (user != null) {
%>
<p>Hello, <%= user.getNickname() %>! (You can
<a href="<%= userService.createLogoutURL(request.getRequestURI()) %>">sign out</a>) or proceed to <a href="/wrmsys">The Main Page</a>.</p>
<%
    } else {
%>
<p>Hello, please 
<a href="<%= userService.createLoginURL(request.getRequestURI()) %>">Sign in</a>.</p>
<%
    }
%>
  </body>
</html>
