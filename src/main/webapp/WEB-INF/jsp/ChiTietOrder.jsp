<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Chi tiết Order</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
          rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../../static/css/container.css">
</head>
<body>
<h1 align="center">Chi Tiết Thức Uống Order</h1>
<table class="table table-striped">
    <thead>
    <th scope="row">Mã Thức Uống</th>
    <th scope="row">Số Lượng</th>
    <th scope="row">Đơn Giá</th>
    <th scope="row">Thành Tiền</th>
    </thead>
    <tbody>
    <form:hidden path="mahd"/>
    <c:forEach items="${chitiethoadon}" var="cthd">
        <tr>
            <c:if test="${cthd.hoaDon.mahd == mahd}">
                <c:forEach items="${thucuong}" var="tu">
                    <c:if test="${cthd.thucUong.matu == tu.matu}">
                        <td>${tu.matu}</td>
                        <td>${cthd.soluong}</td>
                        <td><fmt:formatNumber value="${cthd.dongia}"/> VNĐ</td>
                        <td><fmt:formatNumber value="${cthd.thanhtien}"/> VNĐ</td>
                    </c:if>
                </c:forEach>
            </c:if>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="/listHD" role="button" class="btn btn-primary btn-block">    Exit   </a>
</body>