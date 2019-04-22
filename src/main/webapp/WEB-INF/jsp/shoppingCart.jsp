<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Shopping Cart Confirmation</title>
    <link rel="stylesheet" type="text/css" th:href="@{/styles.css}">
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
          rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<c:if test="${empty cartForm or empty cartForm.cartLines}">
    <h2>Không có thức uống trong giỏ hàng</h2>
    <a class="btn btn-primary" href="${pageContext.request.contextPath}/list_dathang">Mời bạn bấm vào đây mua hàng!</a>
</c:if>
<br>
<br>
<c:if test="${not empty cartForm and not empty cartForm.cartLines }">
  <form:form method="POST" modelAttribute="cartForm"
                                      action="${pageContext.request.contextPath}/shoppingCart">
<div class="container">
    <table id="cart" class="table table-hover table-condensed">
        <thead>
        <tr>
            <th style="width:10%"></th>
            <th style="width:20%">Mã thức uống</th>
            <th style="width:30%">Tên Thức Uống</th>
            <th style="width:10%">Đơn giá</th>
            <th style="width:15%">Số lượng</th>
            <th style="width:30%" class="text-center">Tổng tiền</th>
            <th style="width:10%"> </th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${myCart.cartLines}" var="cart" varStatus="varStatus">
        <tr>
           <td> <img class="thucuong-image" src="${pageContext.request.contextPath}/TUImage?id=${cart.thucuongInfo.id}" style="width:200px;height:200px;"/></td>
            <td>Mã Thức Uống :${cart.thucuongInfo.id} <form:hidden
                    path="cartLines[${varStatus.index}].thucuongInfo.id" /></td>
            <td>Tên Thức Uống : ${cart.thucuongInfo.tentu}</td>
            <td>Đơn giá : <fmt:formatNumber value="${cart.thucuongInfo.price}"/> VNĐ</td>
            <td>Số lượng: <form:input
                    path="cartLines[${varStatus.index}].soluong" class="form-control text-center" type="number"/></td>
            <td>Tổng tiền : <fmt:formatNumber value="${cart.amount}"/> VNĐ</td>
            <td><a class="btn btn-danger btn-sm" href="/shoppingCartRemoveThucUong?id=${cart.thucuongInfo.id}"><i class="fa fa-trash-o"></i></a></td>
        </tr>
        </c:forEach>
</body>
<br>
<input class="btn btn-primary" type="submit" value="Update Quantity" />
<a class="btn btn-primary"
   href="${pageContext.request.contextPath}/shoppingCartCustomer">Enter
    Customer Info</a>
<a class="btn btn-primary" href="/list_dathang" role="button">Tiếp tục mua</a>
<a class="btn btn-primary" href="/shoppingCartConfirmation" role="button">Hóa Đơn</a>
<a class="btn btn-primary" href="/" role="button">Exit</a>
</form:form>
</c:if>
</html>