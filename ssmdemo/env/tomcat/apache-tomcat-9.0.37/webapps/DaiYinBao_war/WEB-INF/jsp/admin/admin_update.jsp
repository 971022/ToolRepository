<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>admin_update</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/Admin/admin_update" method="post">
          <input type="hidden" name="id" value="${adminInfo.id}"><br/>>
    用户名：<input name="name" value="${adminInfo.name}"><br/>

        性别：<input type="radio" name="sex"
                  <c:if test="${adminInfo.sex==true}">
                      checked="checked"
                  </c:if>
             value="1"/>男
        <input type="radio" name="sex"
                <c:if test="${adminInfo.sex==false}">
                    checked="checked"
                </c:if>
         value="0"/>女<br/>
    年龄：<input name="age" value="${adminInfo.age}"><br/>
    地址：<input name="address" value="${adminInfo.address}"><br/>
        <input type="submit" value="提交修改">
    </form>
</body>
</html>
