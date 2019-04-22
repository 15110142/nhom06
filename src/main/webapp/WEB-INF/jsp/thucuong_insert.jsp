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
    <script src="../../js/validate_formInsertTU.js"></script>
    <style>
        #errorten{
            color: red;
        }
        #numloc{
            color: red;
        }
        #errormota{
            color: red;
        }
        #errormanl{
            color: red;
        }
        #errorimage{
            color: red;
        }
    </style>
</head>
<body>
<div class="container">
    <spring:url value="/insertTU" var="insertURL" />
    <h2>Thức Uống</h2>
    <form:form modelAttribute="TUForm" method="post"
               action="${insertURL}" cssClass="form" >
        <form:hidden path="matu"/>
        <div class="form-group">
            <label>Tên Thức Uống</label>
            <form:input path="tentu" cssClass="form-control" id="tentu" /><span id="errorten"></span>
        </div>
        <div class="form-group">
            <label>Đơn Giá</label>
            <form:input path="price" cssClass="form-control" id="dongia" /><span id="numloc"></span>
        </div>
        <div class="form-group">
            <label>Mô Tả</label>
            <form:input path="mota" cssClass="form-control" id="mota" /><span id="errormota"></span>
        </div>
        <div class="form-group">
            <label>Mã Nguyên Liệu :</label>
            <form:select path = "nguyenLieu.id" id = "manl">
                <form:option value = "" label = "--Select--"/>
                <form:options items = "${AllNguyenLieu}" />
            </form:select>
            <span id="errormanl"></span>
        </div>

        <div class="form-group">
            <tr>
                <td>Upload Image</td>
                <td><form:input path="Image" cssClass="form-control" id="image"/><span id="errorimage"></span></td>
                <td> </td>
            </tr>
        </div>
        <button type="submit" class="btn btn-primary" onclick="return validate_insertTU()" >Save</button>
    </form:form>
</div>
</body>
</html>