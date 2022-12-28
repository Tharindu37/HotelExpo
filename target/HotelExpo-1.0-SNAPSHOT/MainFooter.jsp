<%@ page import="javax.xml.crypto.Data" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.time.chrono.ChronoLocalDate" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 12/21/2022
  Time: 9:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="./styles/footer.css">
</head>
<body>
<footer>
<h6><%=new SimpleDateFormat("yyy").format(new Date()) +" All right reserved!"%></h6>
</footer>
</body>
</html>
