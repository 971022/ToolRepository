<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>admin_add.jsp</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/Admin/admin_add" method="post">
    用户名：<input type="text" name="name"><br/>
    <%--单选框--%>
    性别：<input type="radio" name="sex" value="1"/>男
         <input type="radio" name="sex" value="0"/>女<br/>
    年龄：<input type="text" name="age"><br/>
    地址：<input type="text" name="address"><br/>
    <input type="submit" value="添加">
</form>
</body>
</html>
