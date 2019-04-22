<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Hóa Đơn List</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
          rel="stylesheet"/>
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
    <script>
        function ConfirmDeleteHD()
        {
            var x = confirm("Bạn có muốn xóa hóa đơn này không ?");
            if (x)
                return true;
            else
                return false;
        }
    </script>
</head>
<style>
    #searchUser {
        text-align: center;
    }
</style>
<body>

<h2>Danh sách hóa đơn</h2>
<table class="table table-striped">
    <thead>
    <th scope="row">Mã Hóa Đơn</th>
    <th scope="row">Tên Khách Hàng</th>
    <th scope="row">Email</th>
    <th scope="row">Số Điện Thoại</th>
    <th scope="row">Địa Chỉ</th>
    <th scope="row">Số Lượng</th>
    <th scope="row">Tổng Tiền</th>
    </thead>
    <tbody>
    <c:forEach items="${HDList}" var="hoadon">
        <tr>
            <td>${hoadon.mahd}</td>
            <td>${hoadon.tenkh}</td>
            <td>${hoadon.email}</td>
            <td>${hoadon.sdt}</td>
            <td>${hoadon.diachi}</td>
            <td>${hoadon.soluong}</td>
            <td><fmt:formatNumber value="${hoadon.tongtien}"/> VNĐ</td>
            <td><spring:url value="/viewHD/${hoadon.mahd}"
                            var="viewURL"/> <a class="btn btn-primary"
                                                 href="${viewURL}" role="button">View</a></td>
            <td><spring:url value="/user/deleteHoaDon/${hoadon.mahd}"
                            var="deleteURL"/> <a class="btn btn-primary"
                                                 href="${deleteURL}" onclick="return ConfirmDeleteHD();" role="button">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="/" role="button" class="btn btn-primary btn-block">    Exit   </a>
<br>
<br>

</body>
</html>