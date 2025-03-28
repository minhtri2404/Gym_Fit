<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <header>
            <!-- Navigation Bar -->
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container">
                    <a class="navbar-brand" href="/">GymFit</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ms-auto">
                            <li class="nav-item">
                                <a class="nav-link active" href="/">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/products">Products</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/about">About</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/contact">Contact</a>
                            </li>
                            <c:if test="${not empty pageContext.request.userPrincipal}">
                                <li class="nav-item">
                                    <a class="nav-link" href="/cart">
                                        <i class="bi bi-cart"></i> Cart <span
                                            class="badge bg-danger rounded-pill">${sessionScope.sum}</span>
                                    </a>
                                </li>
                                <div class=" mt-2 ms-4">
                                    <li class=" nav-item"> <span style="color: aliceblue;">Xin
                                            chào:
                                            ${sessionScope.fullName}</span> </li>
                                </div>

                                <li class=" nav-item mx-4">
                                    <form method="post" action="/logout">
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                        <button class="btn btn-danger">Đăng xuất</button>
                                    </form>
                                </li>
                            </c:if>
                            <c:if test="${empty pageContext.request.userPrincipal}">
                                <li class="nav-item">
                                    <a class="btn btn-success mx-4" href="/login"
                                        class="position-relative me-4 my-auto">
                                        Đăng nhập

                                    </a>
                                </li>
                            </c:if>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>