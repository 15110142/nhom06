<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Enter Customer Information</title>
    <script src="../../js/validate_customer.js"></script>
    <link href="../../static/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../../static/css/style1.css" rel="stylesheet" type="text/css" media="all" />
</head>
<style>
    #loiname{
        color: yellow;
    }
    #loiemail{
        color: yellow;
    }
    #loiphone{
        color: yellow;
    }
    #loiaddress{
        color: yellow;
    }
</style>
<body>
<div class="content-agile2">
    <form:form  method="post"  modelAttribute="customerForm"
               action="${pageContext.request.contextPath}/saveshoppingCartCustomer">
        <div class="form-control w3layouts">
            <form:input  id="name" path="name" placeholder="Nhập tên khách hàng" /><span id="loiname"></span>
        </div>

        <div class="form-control w3layouts">
            <form:input id="email" path="email" placeholder="Nhập email" /><span id="loiemail"></span>
        </div>

        <div class="form-control agileinfo">
            <form:input id="phone" path="phone"  placeholder="Nhập số điện thoại" /><span id="loiphone"></span>
        </div>

        <div class="form-control agileinfo">
            <form:input id="address" path="address"  placeholder="Nhập địa chỉ" /><span id="loiaddress"></span>
        </div>

        <input type="submit" class="submit" onclick="return validate_customer()" value="Send">
    </form:form>
</body>
</html>