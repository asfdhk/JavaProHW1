<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Prog Academy</title>
  </head>
  <body>
    <% String question = (String)session.getAttribute("user_question"); %>

    <% Date date = new Date();%>
    <% Calendar calendar = Calendar.getInstance(); %>
    <% if (question == null || "".equals(question)) { %>
    <form action="/question" method="POST">
      Question: <input type="text" name="question"><br>
      <input type="submit" />
    </form>
    <% } else if(question.equals("date")){ %>
      <h1>Your question: <%= question %></h1>
      <h2> <%= date.toString()%> </h2>
      <br>Click this link to <a href="/question?a=exit">question</a>
    <% }else {%>
        <h1>Your question: <%= question %></h1>
        <h2> <%= calendar.getWeekYear() %> </h2>
        <br>Click this link to <a href="/question?a=exit">question</a>
    <%}%>

  </body>
</html>
