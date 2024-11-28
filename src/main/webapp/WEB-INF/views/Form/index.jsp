<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Form</title>
</head>
<body>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_HeaderGiayTheThao.jsp" %>
<div class="container">
    <h1>Form</h1>
    <div>
        <form action="/form/filter">
            <h6 style="color:black;margin-top: 10px">Trạng thái</h6>
            <select id="trangThai" name="trangThai" style="width: 500px;height: 35px; border-radius: 5px 5px 5px">
                <option value="2" style="">Tất cả trạng thái </option>
                <option value="0" style="">Đã kích hoạt </option>
                <option value="1" style="">Chưa kích hoạt </option>
            </select>

            <br> <br>
            <button class="btn btn-success">Lọc</button>
        </form>
    </div>
    <br>
    <br>
    <form action="/form/search" method="get">
        <input type="text" style="width: 400px" name="tenForm">
        <button type="submit" class="btn btn-info btn-sm" >Tìm kiếm</button>
    </form>
    <br>
    <a href="/form/view-add" class="btn btn-info btn-sm"> Add </a>
    <br>
    <br>
    <div>
        <table class="table">
            <thead>
            <tr>
                <th>#</th>
                <th>Tên form</th>
                <th>Ngày tạo</th>
                <th>Ngày sửa</th>
                <th>Ghi Chú</th>
                <th>Trạng thái</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${list}" var="d" varStatus="i">
                <tr>
                    <th>${i.index+1}</th>
                    <td>${d.tenForm}</td>
                    <td>${d.ngayTao}</td>
                    <td>${d.ngaySua}</td>
                    <td>${d.ghiChu}</td>
                    <td style="padding-left: 55px">${d.trangThai == 1  ?"✔" : "✖"}</td>

                    <td>
                            <%--                    <a href="/user/delete/${d.id}" class="btn btn-danger btn-sm">Remove</a>--%>
                        <a href="/form/detail/${d.id}" class="btn btn-info btn-sm">Detail</a>
                            <%--                    <a href="/user/view-add" class="btn btn-info btn-sm"> Add </a>--%>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="d-flex justify-content-center">
        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <li class="page-item">
                    <c:if test="${next > 0}">
                        <a class="page-link" href="/form/hien-thi?num=${next - 1}">Previous</a>
                    </c:if>
                </li>
                <c:forEach begin="1" end="${totalPages}" varStatus="loop">
                    <li class="page-item"><a class="page-link" href="/form/hien-thi?num=${loop.index - 1}">${loop.index}</a></li>
                </c:forEach>
                <li class="page-item">
                    <c:if test="${!formPage.last && next < totalPages - 1}">
                        <a class="page-link" href="/form/hien-thi?num=${next + 1}">Next</a>
                    </c:if>
                </li>
            </ul>
        </nav>
    </div>
</div>

<%@ include file="../templates/Admin/Layouts/GiayTheThao/_FooterGiayTheThao.jsp" %>
</body>
</html>
