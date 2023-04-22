<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>customer_page(customer首页)</title>
    <style>
        body {margin:0;}

        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
            position: fixed;
            top: 0;
            width: 100%;
        }

        li {
            float: left;
        }

        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li a:hover:not(.active) {
            background-color: #111;
        }

        #circle {
            width: 36px;
            height: 36px;
            background-color: #efefef;
            border: 1px #111111 solid;
            -webkit-border-radius: 100px;
            position: absolute;
            margin: auto;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            height: 36px;
        }
    </style>
</head>
<body>
<ul>
    <li><a href="#home">首页</a></li>
    <li><a href="#news">新闻</a></li>
    <li><a href="#contact">联系</a></li>
    <li><a href="#about">关于</a></li>
    <a href="${pageContext.request.contextPath}/Customer/findById?${customerInfo.customerId}">
    <div id="circle">
        <img src="/upload/${customerInfo.customerImg}">
    </div>
    </a>
</ul>
<div>
</div>
</body>
</html>
