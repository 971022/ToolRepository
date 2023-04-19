<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>admin</title>
    <script src="${pageContext.request.contextPath}/static/jquery-3.6.0.js"></script>
</head>
<body>

<script>
    $(function () {
        findAll();
    });

    let baseUrl = '${pageContext.request.contextPath}'

    //封装循环表格数据
    function listForeach(arg) {
        if(arg.length!=0){
            for (let i=0;i<arg.length;i++){
                let str =
                    "<tr>"+
                    "<td>"+"<input id=\""+i+"\" type='checkbox' name='checkboxName' value=\""+arg[i].id+"\">"+"</td>" +
                    "<td>"+arg[i].id+"</td>" +
                    "<td>"+arg[i].name+"</td>" +
                    "<td>"+arg[i].sex+"</td>" +
                    "<td>"+arg[i].age+"</td>" +
                    "<td>"+arg[i].address+"</td>"+
                    "<td>" +
                    "<a href='javascript:void(0)' onclick='updateAdmin(\""+arg[i].id+"\",\""+arg[i].name+"\",\""+arg[i].sex+"\",\""+arg[i].age+"\",\""+arg[i].address+"\")'><button type='button' class='btn btn-info' data-toggle='modal' data-target='#updateModal'> 修改</button></a>" +
                    "  "+
                    "<a href='javascript:void(0)' onclick='deleteAdmin(\""+arg[i].id+"\")'><button type='button' class='btn btn-danger'>  删除</button></a>" +
                    "</td>"+
                    "</tr>"
                $("#data").append(str);
                // 获取动态id要用Jquery
                // console.log($("#"+i).val())
            }
        }else{
            alert("没有查询到相关数据！")
        }
    }

    // 查询全部
    function findAll(){
        $.ajax({
            url:baseUrl+'/Admin/FindAll',
            type:'post',
            data:'',
            dataType:'json',
            success:function (data) {
                console.log(data)
                const ViewList =JSON.parse(JSON.stringify(data.adminList));
                listForeach(ViewList);
            },
            error:function (data) {
                alert("无相关数据！")
            }
        })
    }
</script>
</body>
</html>
