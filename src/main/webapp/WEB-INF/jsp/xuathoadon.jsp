
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
    <title>Hóa Đơn</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
          rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../../static/css/container.css">
    <style type="text/css" media="print">
   #editcart{
           display: none;
           }
    #editcus{
        display: none;
    }
    #in{
        display: none;
    }
    #send{
        display: none;
    }
    </style>
</head>
<body>
<div class="page-title">Confirmation</div>
<div class="customer-info-container">
    <h3>Thông tin khách hàng:</h3>
    <ul>
        <li>Tên : ${myCart.customerInfo.name}</li>
        <li>Email: ${myCart.customerInfo.email}</li>
        <li>Số Điện Thoại : ${myCart.customerInfo.phone}</li>
        <li>Địa Chỉ : ${myCart.customerInfo.address}</li>
    </ul>
</div>
<h3>Số lượng và tổng số tiền</h3>
<div class="thucuong-review">
        <ul>
            <li>Tổng số lượng :${myCart.quantityTotal}</li>
            <li>Tổng số tiền  : <fmt:formatNumber value="${myCart.amountTotal}"/> VNĐ</li>
        </ul>
</div>
<div id="page" class="page">
    <div class="header">
        <div class="company" style="text-align: center;font-weight: bold;font-size: 50px">Coffee Store</div>
    </div>
    <br/>
    <div class="title" style="text-align: center;font-weight: bold;font-size: 40px">
        HÓA ĐƠN THANH TOÁN
        <br/>
        -------oOo-------
    </div>
    <br/>
    <br/>
    <!-- Edit Cart -->

<form action="/AddOrder" method="post">
    <input type="hidden" value="${myCart.customerInfo.name}" name="ten">
    <input type="hidden" value="${myCart.customerInfo.email}" name="email">
    <input type="hidden" value="${myCart.customerInfo.phone}" name="sdt">
    <input type="hidden" value="${myCart.customerInfo.address}" name="diachi">
    <input type="hidden" value="${myCart.quantityTotal}" name="tongso">
    <input type="hidden" value="${myCart.amountTotal}" name="tongtien">
    <input type="hidden" value="${myCart.cartLines}" name="thucuong">
    <c:forEach items="${myCart.cartLines}" var="cart">
        <input type="hidden" value="${cart.thucuongInfo.id}" name="matu">
        <input type="hidden" value="${cart.soluong}" name="soluong">
        <input type="hidden" value="${cart.thucuongInfo.price}" name="dongia">
        <input type="hidden" value="${cart.amount}" name="thanhtien">
    </c:forEach>
    <a href="/shoppingCart" id="editcart" class="btn btn-primary">
        Edit Cart
    </a>
    <!-- Edit Customer Info -->
    <a class="btn btn-primary"
       href="${pageContext.request.contextPath}/shoppingCartCustomer" id="editcus">Edit
        Customer Info</a>
    <input class="btn btn-primary" id="send" type="submit" value="Send">
</form>
<div class="container">
    <table class="table table-striped">
        <thead>
        <th scope="row">Mã Thức Uống</th>
        <th scope="row">Tên Thức Uống</th>
        <th scope="row">Đơn Giá</th>
        <th scope="row">Số Lượng</th>
        <th scope="row">Thành Tiền</th>
        </thead>
        <tbody>
        <c:forEach items="${myCart.cartLines}" var="cart"  varStatus="varStatus">
            <tr>
                <td>${cart.thucuongInfo.id}</td>
                <td>${cart.thucuongInfo.tentu}</td>
                <td><fmt:formatNumber value="${cart.thucuongInfo.price}"/> VNĐ</td>
                <td>${cart.soluong}</td>
                <td><fmt:formatNumber value="${cart.amount}"/> VNĐ</td>
            </tr>
        </c:forEach>
        <tr>
            <td></td>
            <td></td>
            <td class="tong">Tổng Cộng</td>
            <td>Tổng số lượng :${myCart.quantityTotal}</td>
            <td>Tổng số tiền  : <fmt:formatNumber value="${myCart.amountTotal}"/> VNĐ</td>
        </tr>
        </tbody>
    </table>

    <a class="btn btn-primary" onclick="window.print()" id="in">In Hóa Đơn</a>
</div>
</div>
</body>
</html>