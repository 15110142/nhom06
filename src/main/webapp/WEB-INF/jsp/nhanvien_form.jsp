<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>User Form</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
          rel="stylesheet"/>
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
<div class="container">
    <spring:url value="/saveNhanVien" var="saveURL"/>
    <h2>User</h2>
    <form:form modelAttribute="NVForm" method="post"
               action="${saveURL}" cssClass="form">
        <form:hidden path="id"/>
        <div class="form-group">
            <label>Tên Nhân Viên</label>
            <form:input path="tennv" cssClass="form-control" id="tennv"/>
        </div>
        <div class="form-group">
            <label>Năm Sinh</label>
            <form:input path="namsinh" cssClass="form-control" id="namsinh"/>
        </div>
        <div class="form-group">
            <label>Số Điện Thoại</label>
            <form:input path="sdt" cssClass="form-control" id="sdt"/>
        </div>
        <div class="form-group">
            <label>Địa Chỉ</label>
            <form:input path="diachi" cssClass="form-control" id="diachi"/>
        </div>
        <button type="submit" class="btn btn-primary">Save</button>
        <a class="btn btn-primary" href="/listNV">Exit</a>
    </form:form>
</div>
</body>
</html>