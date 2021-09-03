<%@ page import="java.util.Random" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
    <title>HIT - DevOps Final Project</title>

    <%
      String userName = request.getParameter("userName");
      Random rand = new Random();
      int randomNum = rand.nextInt(6);
      if (userName == null)
        userName = "";
    %>
  </head>
      <body style="background-image: url('avengersbackground.png');background-repeat: no-repeat;  background-position: center;
  ">
     <form method="get" style="display: flex;flex-direction: column;justify-content:center">
      <p>find which avenger you are</p>
      <div style="width: 200px; text-align: center;">
      <input name="userName" value="<%=userName%>" style="width: 100px; margin-bottom: 10px;">
      </div>
      <input type="submit" value="Which avenger are you?" style="width: 200px;">
    </form>
  
    <%
      if (userName != "") {
    %>
      <h2>Hello <%=userName%>, Your inner avenger is:</h2>
    <%
        if (randomNum == 0) {
      %>
          <h2>Loki</h2>
      <% } %>
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
          <h2>Black Widow!</h2>
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
