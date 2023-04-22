<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>customer_picture</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/Customer/uploadPicture?customerId=${sessionScope.customerInfo.customerId}" method="post" enctype="multipart/form-data">
        <input type="file" name="file"/>
        <input type="submit" value="上传头像"/>
</form>
</body>
</html>
