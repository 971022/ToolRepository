<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>customer_login</title>
</head>
<body>
<h2>贷银宝</h2>
<a href="${pageContext.request.contextPath}/admin/admin_page"><button>管理员界面</button></a>
<form action="${pageContext.request.contextPath}/Customer/login" method="post">
    用户名：<input type="text" name="customerName"><br/>
    密  码：<input type="text" name="customerPwd"><br/>
    <input type="submit" value="登录">
</form>
<a href="${pageContext.request.contextPath}/Customer/showAdd"><button>注册</button></a>
</body>
</html>
