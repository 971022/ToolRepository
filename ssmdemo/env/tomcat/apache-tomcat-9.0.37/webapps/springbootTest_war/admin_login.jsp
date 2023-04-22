<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/11/11 0011
  Time: 17:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/admin/adminLogin">
    登录名称<input type="text" name="adminLoginName"><br>
    登录密码<input type="password" name="adminLoginPwd"><br>
    <input type="submit" value="登录">
</form>
</body>
</html>
