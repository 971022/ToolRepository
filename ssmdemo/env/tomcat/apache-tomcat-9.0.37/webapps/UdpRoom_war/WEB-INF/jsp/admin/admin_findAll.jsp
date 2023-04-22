<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>admin_findAll</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/Admin/showAdd"><button>添加管理员</button></a>
<div style="text-align: center">
<table border="1">
    <tr>
        <td>管理员ID</td>
        <td>登录名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>地址</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${adminList}" var="li">
        <tr>
            <td>${li.id}</td>
            <td>${li.name}</td>
            <td>
                <c:choose>
                    <c:when test="${li.sex==true}">男</c:when>
                    <c:otherwise>女</c:otherwise>
                </c:choose>
            </td>
            <td>${li.age}</td>
            <td>${li.address}</td>
            <td><a href="${pageContext.request.contextPath}/Admin/admin_delete?id=${li.id}"><button>删除</button></a></td>
            <td><a href="${pageContext.request.contextPath}/Admin/findById?id=${li.id}"><button>修改</button></a></td>
        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>