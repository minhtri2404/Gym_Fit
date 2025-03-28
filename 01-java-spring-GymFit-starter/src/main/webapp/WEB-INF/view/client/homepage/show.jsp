<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
      <!DOCTYPE html>
      <html lang="en">

      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>GymFit - Trang thiết bị tập gym chất lượng cao</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Bootstrap Icons -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="../client/css/style.css" />
      </head>

      <body>

        <!-- header -->
        <jsp:include page="../layout/header.jsp" />

        <main>
          <!-- Hero Section -->
          <section class="hero-section">
            <div class="container-fluid p-0">
              <div class="hero-content" style="background-color: #9cd2ca;">
                <div class="row g-0">
                  <div class="col-md-6 p-5 d-flex flex-column justify-content-center">
                    <div class="hero-text">
                      <h1 class="display-4 fw-bold">SPORT</h1>
                      <p class="lead">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt
                        ut
                        laoreet dolore
                        magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
                        ullamcorper
                        suscipit lobortis
                        nisl ut aliquip ex ea commodo consequat.
                      </p>
                      <a href="/products" class="btn btn-dark btn-lg mt-3">Shop Now</a>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <img src="/client/img/home1.jpg" alt="Fitness equipment" class="img-fluid hero-image" />
                  </div>
                </div>
              </div>
            </div>
          </section>

          <!-- Categories Section -->
          <section class="categories-section py-5">
            <div class="container">
              <div class="row g-4">
                <div class="col-md-6">
                  <div class="category-item bg-light">
                    <img src="/client/img/home2.jpg" alt="Runner" class="img-fluid" />
                  </div>
                </div>
                <div class="col-md-6">
                  <div
                    class="category-item bg-secondary p-5 h-100 d-flex flex-column justify-content-center text-center">
                    <h2 class="display-5 fw-bold">GAP</h2>
                    <p class="lead">
                      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt.
                    </p>
                    <a href="/products" class="btn btn-outline-light mt-3">View Products</a>
                  </div>
                </div>
              </div>

              <div class="row g-4 mt-4">
                <div class="col-md-6">
                  <div class="category-item bg-light p-5 h-100 d-flex flex-column justify-content-center text-center">
                    <h2 class="display-5 fw-bold">CORE</h2>
                    <p class="lead">
                      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt.
                    </p>
                    <a href="/products" class="btn btn-outline-dark mt-3">View Products</a>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="category-item bg-dark">
                    <img src="/client/img/home3.jpg" alt="Male fitness" class="img-fluid" />
                  </div>
                </div>
              </div>
            </div>
          </section>

          <!-- Training Programs Section -->
          <section class="training-programs py-5 bg-light">
            <div class="container text-center">
              <div class="row">
                <div class="col-md-4 mb-4">
                  <div class="program-item">
                    <div class="program-image rounded-circle overflow-hidden mx-auto"
                      style="width: 200px; height: 200px; background-color: #9cd2ca;">
                      <img src="/client/img/home4.jpg" alt="Circuit Training" class="img-fluid" />
                    </div>
                    <h3 class="mt-4">C. TRAINING</h3>
                    <p class="text-muted">
                      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt.
                    </p>
                  </div>
                </div>
                <div class="col-md-4 mb-4">
                  <div class="program-item">
                    <div class="program-image rounded-circle overflow-hidden mx-auto"
                      style="width: 200px; height: 200px; background-color: #e0e0e0;">
                      <img src="/client/img/home5.jpg" alt="Body Pump" class="img-fluid" />
                    </div>
                    <h3 class="mt-4">BODY PUMP</h3>
                    <p class="text-muted">
                      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt.
                    </p>
                  </div>
                </div>
                <div class="col-md-4 mb-4">
                  <div class="program-item">
                    <div class="program-image rounded-circle overflow-hidden mx-auto"
                      style="width: 200px; height: 200px; background-color: #ffcccb;">
                      <img src="/client/img/home6.jpg" alt="Body Balance" class="img-fluid" />
                    </div>
                    <h3 class="mt-4">BODY BALANCE</h3>
                    <p class="text-muted">
                      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt.
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </section>

          <!-- Promotion Banner -->
          <section class="promotion-banner py-5 text-center">
            <div class="container">
              <h2 class="display-6 fw-bold text-uppercase">50% OFF UNTIL NOVEMBER</h2>
              <p class="lead">Don't miss our special promotion on all gym equipment</p>
              <a href="/products" class="btn btn-dark btn-lg mt-3">Shop Now</a>
            </div>
          </section>
        </main>

        <jsp:include page="../layout/footer.jsp" />

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Custom JS -->
        <script src="../client/js/script.js"></script>
      </body>

      </html>