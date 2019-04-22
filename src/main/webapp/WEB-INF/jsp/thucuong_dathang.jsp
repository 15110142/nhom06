<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Thức Uống</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
          rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body style="background: url(../../static/img/anhMatranDen.jpg)">
<h2 style="text-align: center;font-family: 'Times New Roman';font-weight: bold;color: yellow">Danh Sách Thức Uống</h2>
<div class="thucuong-review">
    <c:forEach items="${TUList}" var="thucuong">
        <ul>
            <img class="thucuong-image" src="${pageContext.request.contextPath}/TUImage?id=${thucuong.matu}"/>
            <li style="color: yellow">Mã Thức Uống :${thucuong.matu}</li>
            <li style="color: yellow">Tên Thức Uống : ${thucuong.tentu}</li>
            <li style="color: yellow">Đơn Giá : <fmt:formatNumber value="${thucuong.price}"/> VNĐ</li>
            <li style="color: yellow">Mô Tả : ${thucuong.mota}</li>
            <li style="color: yellow">Tên Nguyên Liệu: ${thucuong.nguyenLieu.tennl}</li>
            <li><a href="${pageContext.request.contextPath}/buyProduct?id=${thucuong.matu}" class="btn btn-primary">Buy Now</a></li>
        </ul>
    </c:forEach>
</div>
</body>
</html>