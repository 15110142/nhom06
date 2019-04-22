<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Update Thức Uống</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
          rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
<div class="container">
    <spring:url value="/updateTU" var="updateURL" />
    <h2>Thức Uống</h2>
    <form:form modelAttribute="TUForm" method="post"
               action="${updateURL}" cssClass="form">
        <form:hidden path="matu"/>
        <div class="form-group">
            <label>Tên Thức Uống</label>
            <form:input path="tentu" cssClass="form-control" id="tentu" />
        </div>
        <div class="form-group">
            <label>Đơn Giá</label>
            <form:input path="price" cssClass="form-control"  />
        </div>
        <div class="form-group">
            <label>Mô Tả</label>
            <form:input path="mota" cssClass="form-control" />
        </div>
        <div class="form-group">
           <label>Mã Nguyên Liệu :</label>
            <form:select path = "nguyenLieu.id">
                <form:option value = "" label = "--Select--"/>
                <form:options items = "${AllNguyenLieu}" />
            </form:select>
        </div>

        <div class="form-group">
            <label>Image</label>
            <form:input path="Image" cssClass="form-control"/>
        </div>
        <button type="submit" class="btn btn-primary" >Save</button>
    </form:form>
</div>
</body>
</html>