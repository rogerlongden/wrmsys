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

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
<%
    UserService userService = UserServiceFactory.getUserService();
    User user = userService.getCurrentUser();
%>

    <form action="/updateJuiceType.jsp" method="post">
      <div>Juice Name: <input type="text" name="juiceName"</div>
      <div>Juice Colour: <input type="text" name="juiceColour"</div>
      <div>Juice Description: <textarea name="juiceDescription" rows="3" cols="60"></textarea></div>
      <div><input type="submit" value="Submit" /></div>
    </form>

  </body>
</html>
