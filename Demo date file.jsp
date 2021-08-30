<%@ page import="java.util.Random" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
    <title>Dev Ops Hit</title>

    <%
      String userName = request.getParameter("userName");
      Random rand = new Random();
      int randomNum = rand.nextInt(11);
      if (userName == null)
        userName = "";
    %>
  </head>

  <body>
    <form method="get">
      Enter your name: <input name="userName" value="<%=userName%>">
      <input type="submit" value="Generate number">
    </form>
  
    <%
      if (userName != "") {
    %>
      <h2>Hello <%=userName%>, Your number is: <%=randomNum%></h2>
      <%
        if (randomNum > 5) {
      %>
          <h2>This number is so high, Great Job</h2>
      <% } %>
      <%
        if (randomNum <= 5){
      %>
          <h2>This number is a bit low, try again</h2>
      <% } %>
    <% } %>

  </body>
</html>
