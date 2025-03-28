<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content="Dự án laptopshop"/>
    <meta name="author" content="Hỏi Dân IT"/>
    <title>Create User</title>
    <link href="/css/styles.css" rel="stylesheet"/>
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="/js/datatables-simple-demo.js"></script>

    <script>
        $(document).ready(() => {
            const productFile = $("#productFile");
            productFile.change(function (e) {
                const imgURL = URL.createObjectURL(e.target.files[0]);
                $("#productPreview").attr("src", imgURL);
                $("#productPreview").css({"display": "block"});
            });
        });
    </script>


</head>

<body class="sb-nav-fixed">
<jsp:include page="../layout/header.jsp"/>
<div id="layoutSidenav">
    <jsp:include page="../layout/sidebar.jsp"/>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">Manage Products</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                    <li class="breadcrumb-item active">Products</li>
                </ol>
                <div class="mt-5">
                    <div class="row">
                        <div class="col-md-6 col-12 mx-auto">
                            <h3>Create a product</h3>
                            <hr/>
                            <form:form class="row" method="post" action="/admin/product/create"
                                       modelAttribute="newProduct" enctype="multipart/form-data">
                                <div class="col-md-6 col-12 mb-3">
                                    <c:set var="errorName">
                                        <form:errors path="name" cssClass="invalid-feedback"/>
                                    </c:set>
                                    <label class="form-label">Name:</label>
                                    <form:input type="text"
                                                class="form-control ${not empty errorName ? 'is-invalid' : ''}"
                                                path="name"/>
                                        ${errorName}
                                </div>
                                <div class="col-md-6 col-12 mb-3">
                                    <c:set var="errorPrice">
                                        <form:errors path="price" cssClass="invalid-feedback"/>
                                    </c:set>
                                    <label class="form-label">Price:</label>
                                    <form:input type=""
                                                class="form-control ${not empty errorPrice ? 'is-invalid' : ''}"
                                                path="price"/>
                                        ${errorPrice}
                                </div>
                                <div class="col-12 mb-3">
                                    <c:set var="errorDetailDesc">
                                        <form:errors path="detailDesc" cssClass="invalid-feedback"/>
                                    </c:set>
                                    <label class="form-label">Detail description:</label>
                                    <form:textarea
                                            class="form-control ${not empty errorDetailDesc ? 'is-invalid' : ''}"
                                            path="detailDesc" rows="3"/>
                                        ${errorDetailDesc}
                                </div>
                                <div class="col-md-6 col-12 mb-3">
                                    <c:set var="errorShortDesc">
                                        <form:errors path="shortDesc" cssClass="invalid-feedback"/>
                                    </c:set>
                                    <label class="form-label">Short description:</label>
                                    <form:input type="text"
                                                class="form-control ${not empty errorShortDesc ? 'is-invalid' : ''}"
                                                path="shortDesc"/>
                                        ${errorShortDesc}
                                </div>
                                <div class="col-md-6 col-12 mb-3">
                                    <c:set var="errorQuantily">
                                        <form:errors path="quantity" cssClass="invalid-feedback"/>
                                    </c:set>
                                    <label class="form-label">Quantity:</label>
                                    <form:input type="number"
                                                class="form-control ${not empty errorQuantily ? 'is-invalid' : ''}"
                                                path="quantity" value="0"/>
                                        ${errorQuantily}
                                </div>
                                <div class="col-md-6 col-12 mb-3">
                                    <label class="form-label">Factory:</label>
                                    <form:select class="form-select" path="factory">
                                        <form:option value="Apple(Macbook)">Apple(Macbook)</form:option>
                                        <form:option value="Asus">Asus</form:option>
                                        <form:option value="Lenovo">Lenovo</form:option>
                                        <form:option value="Dell">Dell</form:option>
                                        <form:option value="LG">LG</form:option>
                                        <form:option value="Acer">Acer</form:option>
                                    </form:select>
                                </div>
                                <div class="col-md-6 col-12 mb-3">
                                    <label class="form-label">Target:</label>
                                    <form:select class="form-select" path="target">
                                        <form:option value="Gaming">Gaming</form:option>
                                        <form:option value="Sinh viên - Văn phòng">Sinh viên - Văn phòng
                                        </form:option>
                                        <form:option value="Thiết kế đồ họa">Thiết kế đồ họa
                                        </form:option>
                                        <form:option value="Mỏng nhẹ">Mỏng nhẹ</form:option>
                                        <form:option value="Doanh nhân">Doanh nhân</form:option>
                                    </form:select>
                                </div>
                                <div class="col-md-6 col-12 mb-3">
                                    <label for="productFile" class="form-label">Image:</label>
                                    <input class="form-control" type="file" accept=".png, .jpg, .jpeg"
                                           id="productFile" name="productFile"/>
                                </div>
                                <div class="col-12 mb-3">
                                    <!-- dislay- none: ẩn tag cho đên khi được block -->
                                    <img style="max-height: 250px; display: none;" alt="product preview"
                                         id="productPreview"/>
                                </div>
                                <div class="col-12 mb-5">
                                    <button type="submit" class="btn btn-primary">Create</button>
                                    <a href="/admin/product" class="btn btn-success mx-2">Back</a>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="../layout/footer.jsp"/>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
<script src="/js/scripts.js"></script>
</body>

</html>