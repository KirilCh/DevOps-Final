<%@ page import="java.util.Random" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
    <title>Dev Ops Hit</title>

    <%
      String userName = request.getParameter("userName");
      Random rand = new Random();
      int randomNum = rand.nextInt(6);
      if (userName == null)
        userName = "";
    %>
  </head>

  <body>
    <form method="get">
      Enter your name: <input name="userName" value="<%=userName%>">
      <input type="submit" value="Which avenger are you?">
    </form>
  
    <%
      if (userName != "") {
    %>
      <h2>Hello <%=userName%>, Your inner avenger is: <%=randomNum%></h2>
      <%
        if (randomNum == 1) {
      %>
          <h2>Tony Stark!</h2>
      <% } %>
    <%
        if (randomNum == 2) {
      %>
          <h2>Thor!</h2>
      <% } %>
    <%
        if (randomNum == 3) {
      %>
          <h2>Tony Stark!</h2>
      <% } %>
    <%
        if (randomNum == 4) {
      %>
          <h2>Captain America!</h2>
      <% } %>
      <%
        if (randomNum == 5){
      %>
          <h2>Doctor Strange!</h2>
      <% } %>
    <% } %>

  </body>
</html>
