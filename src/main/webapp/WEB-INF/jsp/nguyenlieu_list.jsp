<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Nguyên Liệu List</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
          rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
    <link href="../../static/css/listNL.css"   rel="stylesheet" type="text/css"/>
    <script>
    function ConfirmDelete()
    {
    var x = confirm("Bạn có muốn xóa nguyên liệu này không ?");
    if (x)
    return true;
    else
    return false;
    }
    </script>
</head>
<body style="background: url('../../static/img/hinh-nen-phao-hoa-chuyen-dong-38.gif')">
    <h2 style="font-family: Cambria;color: yellow;font-size:60px;text-align: center;font-style: inherit">Danh Sách Nguyên Liệu</h2>
        <c:forEach items="${NLList}" var="nguyenlieu">
    <div class="product-preview-container">
            <ul>
            <img src="${pageContext.request.contextPath}/NLImage?id=${nguyenlieu.id}"/>
                <li style="color: yellow;font-family: 'lato-bold', Helvetica, Arial, sans-serif;font-size: 20px">
                    Mã Nguyên Liệu :${nguyenlieu.id}</li>
                <li style="color: yellow;font-family: 'lato-bold', Helvetica, Arial, sans-serif;font-size: 15px">
                    Tên Nguyên Liệu : ${nguyenlieu.tennl}</li>
                <spring:url value="/user/updateNL/${nguyenlieu.id}"
                                var="updateURL" /> <a class="btn btn-primary" href="${updateURL}" role="button" >Update</a>
    <spring:url value="/user/deleteNL/${nguyenlieu.id}"
                                var="deleteURL" /> <a class="btn btn-primary" href="${deleteURL}" onclick="return ConfirmDelete();" role="button">Delete</a>
        </ul>
    </div>
        </c:forEach>
</body>
<br>
<spring:url value="/user/addNL/" var="addURL" />
<a class="btn btn-primary" href="${addURL}" role="button">Thêm Nguyên Liệu</a>
    <a class="btn btn-primary" href="/" role="button">Exit</a>

</html>