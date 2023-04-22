<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>customer_page</title>
</head>
<body>
<tr>
    <td>
        <a href="${pageContext.request.contextPath}/Admin/admin_findAll">
            <button>管理员管理</button>
        </a>
    </td>
    <td>
        <a href="${pageContext.request.contextPath}">
            <button>产品类型管理</button>
        </a>
    </td>
    <td>
        <a href="">
            <button>产品详情管理</button>
        </a>
    </td>
</tr>
</body>
</html>
