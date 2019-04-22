<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Nhân Viên List</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
          rel="stylesheet"/>
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
    <script>
        function ConfirmDeleteNV()
        {
            var x = confirm("Bạn có muốn xóa nhân viên này không ?");
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

<h2>Danh sách nhân viên</h2>
<table class="table table-striped">
    <thead>
    <th scope="row">Mã Nhân Viên</th>
    <th scope="row">Tên Nhân Viên</th>
    <th scope="row">Năm Sinh</th>
    <th scope="row">Số Điện Thoại</th>
    <th scope="row">Địa Chỉ</th>
    <th scope="row">Update</th>
    <th scope="row">Delete</th>
    </thead>
    <tbody>
    <c:forEach items="${NVList}" var="nhanvien">
        <tr>
            <td>${nhanvien.id}</td>
            <td>${nhanvien.tennv}</td>
            <td>${nhanvien.namsinh}</td>
            <td>${nhanvien.sdt}</td>
            <td>${nhanvien.diachi}</td>
            <td><spring:url value="/admin/updateNhanVien/${nhanvien.id}"
                            var="updateURL"/> <a class="btn btn-primary"
                                                 href="${updateURL}" role="button">Update</a></td>
            <td><spring:url value="/admin/deleteNhanVien/${nhanvien.id}"
                            var="deleteURL"/> <a class="btn btn-primary"
                                                 href="${deleteURL}" onclick="return ConfirmDeleteNV();" role="button">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<spring:url value="/admin/addNhanVien/" var="addURL"/>
<a class="btn btn-primary" href="${addURL}" role="button">Add New Employee</a>
<a class="btn btn-primary" href="/" role="button">Exit</a>
<br>
<br>
<div id="searchUser">
    <spring:url value="/listNV/searchNV"
                var="searchURL"/>
    <form:form action="${searchURL}" method="GET" >
        Search Nhân Viên :
        <input style="font-family: 'Times New Roman' " type="text" name="tennv" ></input>
        <input class="btn btn-primary" type="submit" value="Search"></input></td>
    </form:form>
</div>
</body>
</html>