<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
      <!DOCTYPE html>
      <html lang="en">

      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Shopping Cart - GymFit</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Bootstrap Icons -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

        <!-- Custom CSS -->
        <link rel="stylesheet" href="../client/css/style.css" />
      </head>

      <body>
        <jsp:include page="../layout/header.jsp" />

        <main>
          <!-- Page Title -->
          <section class="bg-light py-5">
            <div class="container">
              <h1 class="fw-bold">Shopping Cart</h1>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="/">Home</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Cart</li>
                </ol>
              </nav>
            </div>
          </section>

          <!-- Cart Items -->
          <section class="py-5">
            <div class="container">
              <!-- Empty Cart Message
              <div id="empty-cart-message" class="text-center py-5">
                <i class="bi bi-cart-x display-1 text-muted"></i>
                <h3 class="mt-4">Your cart is empty</h3>
                <p class="text-muted">Looks like you haven't added any products to your cart yet.</p>
                <a href="/products" class="btn btn-primary mt-3">Browse Products</a>
              </div> -->
              <div class="table-responsive">
                <table class="table align-middle">
                  <thead class="table-light">
                    <tr>
                      <th scope="col">Sản phẩm</th>
                      <th scope="col">Tên</th>
                      <th scope="col">Giá cả</th>
                      <th scope="col">Số lượng</th>
                      <th scope="col">Thành tiền</th>
                      <th scope="col">Xử lý</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach var="cartDetail" items="${listCartDetail}">
                      <tr>
                        <td>
                          <div class="d-flex align-items-center">
                            <img src="/images/product/${cartDetail.product.image}" class="img-thumbnail me-3"
                              style="width: 80px; height: 80px; object-fit: cover;" alt="Sản phẩm">
                          </div>
                        </td>
                        <td>
                          <p class="mb-0">
                            <a target="_blank" class="text-decoration-none fw-semibold"
                              href="/product/${cartDetail.product.id}">
                              ${cartDetail.product.name}
                            </a>
                          </p>
                        </td>
                        <td>
                          <p class="mb-0 fw-bold text-primary">
                            <fmt:formatNumber type="number" value="${cartDetail.product.price}" />
                            VNĐ
                          </p>
                        </td>
                        <td>
                          <div class="input-group quantity" style="width: 120px;">
                            <button class="btn btn-outline-secondary btn-sm btn-minus">
                              <i class="fa fa-minus"></i>
                            </button>
                            <input type="text" class="form-control text-center border-0" value="${cartDetail.quantity}"
                              data-cart-detail-id="${cartDetail.id}" data-cart-detail-price="${cartDetail.price}">
                            <button class="btn btn-outline-secondary btn-sm btn-plus">
                              <i class="fa fa-plus"></i>
                            </button>
                          </div>
                        </td>
                        <td>
                          <p class="mb-0 fw-bold text-success" data-cart-detail-id="${cartDetail.id}">
                            <fmt:formatNumber type="number" value="${cartDetail.price * cartDetail.quantity}" />
                            VNĐ
                          </p>
                        </td>
                        <td>
                          <button class="btn btn-outline-danger btn-sm rounded-circle">
                            <i class="fa fa-times"></i>
                          </button>
                        </td>
                      </tr>
                    </c:forEach>
                  </tbody>
                </table>
              </div>


              <!-- Cart Items Content -->
              <div class="row">
                <div class="col-lg-8">
                  <div id="cart-items">
                    <!-- Cart items will be dynamically inserted here -->

                  </div>
                </div>

                <div class="col-lg-4">
                  <div class="card">
                    <div class="card-header bg-dark text-white">
                      <h5 class="mb-0">Order Summary</h5>
                    </div>
                    <div class="card-body">
                      <div class="d-flex justify-content-between mb-3">
                        <span>Subtotal:</span>
                        <span id="cart-total">
                          <fmt:formatNumber value="${totalPrice}" type="number" /> Vnđ
                        </span>
                      </div>
                      <div class="d-flex justify-content-between mb-3">
                        <span>Shipping:</span>
                        <span>Free</span>
                      </div>
                      <div class="d-flex justify-content-between mb-3">
                        <span>Tax:</span>
                        <span>Calculated at checkout</span>
                      </div>
                      <hr>
                      <div class="d-flex justify-content-between mb-3">
                        <strong>Total:</strong>
                        <strong id="cart-total-with-tax">
                          <fmt:formatNumber value="${totalPrice}" type="number" /> Vnđ
                        </strong>
                      </div>

                      <div class="mb-3">
                        <label for="coupon" class="form-label">Apply Coupon Code</label>
                        <div class="input-group">
                          <input type="text" class="form-control" id="coupon" placeholder="Enter coupon code">
                          <button class="btn btn-outline-secondary" type="button">Apply</button>
                        </div>
                      </div>

                      <div class="d-grid gap-2 mt-4">
                        <a href="./checkout.html" class="btn btn-primary btn-lg" id="checkout-button">
                          Proceed to Checkout
                        </a>
                        <a href="./products.html" class="btn btn-outline-secondary">
                          Continue Shopping
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

            </div>
          </section>


          <section class="bg-light py-5">
            <div class="container">
              <h3 class="mb-4">Recommended Products</h3>
              <div class="row g-4">
                <div class="col-lg-3 col-md-6">
                  <div class="card product-card">
                    <div class="product-image">
                      <img
                        src="https://images.unsplash.com/photo-1517836357463-d25dfeac3438?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"
                        alt="Weight Bench" class="card-img-top">
                    </div>
                    <div class="card-body">
                      <h5 class="card-title">Adjustable Weight Bench</h5>
                      <p class="card-text text-muted">7 positions, foldable design</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <span class="h5 mb-0">$179.99</span>
                        <a href="./product_detail.html?id=7" class="btn btn-outline-primary">View Details</a>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="col-lg-3 col-md-6">
                  <div class="card product-card">
                    <div class="product-image">
                      <img
                        src="https://images.unsplash.com/photo-1603287681836-b174ce5074c2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1171&q=80"
                        alt="Yoga Mat" class="card-img-top">
                    </div>
                    <div class="card-body">
                      <h5 class="card-title">Premium Yoga Mat</h5>
                      <p class="card-text text-muted">Non-slip, eco-friendly</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <span class="h5 mb-0">$39.99</span>
                        <a href="./product_detail.html?id=6" class="btn btn-outline-primary">View Details</a>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="col-lg-3 col-md-6">
                  <div class="card product-card">
                    <div class="product-image">
                      <img
                        src="https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"
                        alt="Resistance Bands" class="card-img-top">
                    </div>
                    <div class="card-body">
                      <h5 class="card-title">Resistance Bands Set</h5>
                      <p class="card-text text-muted">5 resistance levels, with handles</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <span class="h5 mb-0">$29.99</span>
                        <a href="./product_detail.html?id=8" class="btn btn-outline-primary">View Details</a>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="col-lg-3 col-md-6">
                  <div class="card product-card">
                    <div class="product-image">
                      <img
                        src="https://images.unsplash.com/photo-1616279969856-759f14b3eb64?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"
                        alt="Foam Roller" class="card-img-top">
                    </div>
                    <div class="card-body">
                      <h5 class="card-title">Foam Roller</h5>
                      <p class="card-text text-muted">High-density, textured surface</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <span class="h5 mb-0">$24.99</span>
                        <a href="./product_detail.html?id=10" class="btn btn-outline-primary">View Details</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section> -->
        </main>

        <jsp:include page="../layout/footer.jsp" />

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Custom JS -->
        <script src="../client/js/script.js"></script>

      </body>

      </html>