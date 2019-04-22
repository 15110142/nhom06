<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Thêm Nguyên Liệu</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
          rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>

</head>
<body>

<div class="container">
    <spring:url value="/updateNL" var="updateURL" />
    <h2>Nguyên Liệu</h2>
    <form:form modelAttribute="NLForm" method="post"
               action="${updateURL}" cssClass="form">
        <form:hidden path="id"/>
        <div class="form-group">
            <label>Tên Nguyên Liệu</label>
            <form:input path="tennl" cssClass="form-control" id="tennl" />
            <span id="errorname"></span>
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