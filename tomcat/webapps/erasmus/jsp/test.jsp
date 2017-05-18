<html>
  <head> <%@ page import="java.sql.*" pageEncoding="UTF-8" %>
</head>
<%
    Class.forName("org.postgresql.Driver");
    String url="jdbc:postgresql://localhost/postgres";
    Connection con=DriverManager.getConnection(url,"postgres","root");
%>
<h1>All is ok !!<h1>
</html>