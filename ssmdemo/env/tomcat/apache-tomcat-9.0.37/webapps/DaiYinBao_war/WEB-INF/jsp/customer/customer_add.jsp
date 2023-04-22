<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>customer_add</title>
</head>
<body>
<h2>贷银宝</h2>
<form action="${pageContext.request.contextPath}/Customer/add" method="post">
    用户名：<input type="text" name="customerName"/><br/>
    密码：<input type="password" name="customerPwd"/><br/>
    性别：<input type="radio" name="customerSex" value="1"/>男
         <input type="radio" name="customerSex" value="0"/>女<br/>
    身份证号：<input type="text" name="customerCardId"/><br/>
    年龄：<input type="text" name="customerAge"/><br/>
    电话：<input type="text" name="customerTel"/><br/>
    <input type="submit" value="提交注册">
</form>
</body>
</html>
