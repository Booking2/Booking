<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <table border="1px">
    <thead><tr><td>账户名称</td><td>金额</td><td>卡号</td></tr></thead>
    <tbody>
       <c:forEach items="${bankList}" var="bank">
         <tr><td>${bank.customerName}</td><td>${bank.currentMoney}</td><td>${bank.cardID}</td></tr>
       </c:forEach>
    </tbody>
  </table>
</body>
</html>