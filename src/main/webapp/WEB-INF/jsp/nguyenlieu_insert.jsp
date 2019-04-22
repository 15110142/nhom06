<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Thêm Nguyên Liệu</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
          rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
    <script>
        function themnguyenlieu() {
            var tennl = document.getElementById("tennl").value;
            var Image = document.getElementById("Image").value;
            if(tennl == null || tennl==""){
                document.getElementById("ten").innerHTML = "Tên nguyên liệu không được bỏ trống!";
                return false;
            }
            else {
                if(Image == null || Image == ""){
                    document.getElementById("ten").innerHTML = "";
                    document.getElementById("image").innerHTML = "Thêm ảnh vào đi nào!";
                    return false;
                }
                else
                {
                    return true;
                }
            }
        }
    </script>
    <style>
        #ten{
            color: red;
        }
        #image{
            color: red;;
        }
    </style>
</head>
<body>
<div class="container">
    <spring:url value="/insertNL" var="insertURL" />
    <h2>Nguyên Liệu</h2>
    <form:form modelAttribute="NLForm" method="post"
               action="${insertURL}" cssClass="form">
        <form:hidden path="id"/>
        <div class="form-group">
            <label>Tên Nguyên Liệu</label>
            <form:input path="tennl" cssClass="form-control" id="tennl" /><span id="ten"></span>
        </div>
        <div class="form-group">
            <label>Image</label>
            <form:input path="Image" cssClass="form-control"/><span id="image"></span>
        </div>
        <button type="submit" class="btn btn-primary" onclick="return themnguyenlieu()">Save</button>
    </form:form>
</div>
</body>
</html>