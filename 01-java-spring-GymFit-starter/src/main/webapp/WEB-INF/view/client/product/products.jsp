<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
      <!DOCTYPE html>
      <html lang="en">

      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Products - GymFit</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Bootstrap Icons -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
        <!-- Custom CSS -->
        <link href="../client/css/style.css" rel="stylesheet" />

        <link rel="stylesheet" href="">
      </head>

      <body>
        <jsp:include page="../layout/header.jsp" />

        <main>
          <!-- Page Title -->
          <section class="bg-light py-5">
            <div class="container">
              <h1 class="fw-bold">Shop Gym Equipment</h1>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="/">Home</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Products</li>
                </ol>
              </nav>
            </div>
          </section>

          <!-- Products Section -->
          <section class="py-5">
            <div class="container">
              <div class="row">
                <!-- Filters Sidebar -->
                <div class="col-lg-3 mb-4">
                  <div class="card">
                    <div class="card-header bg-dark text-white">
                      <h5 class="mb-0">Filters</h5>
                    </div>
                    <div class="card-body">
                      <h6 class="mb-3">Categories</h6>
                      <div class="form-check mb-2">
                        <input class="form-check-input" type="checkbox" value="" id="category1">
                        <label class="form-check-label" for="category1">
                          Weights
                        </label>
                      </div>
                      <div class="form-check mb-2">
                        <input class="form-check-input" type="checkbox" value="" id="category2">
                        <label class="form-check-label" for="category2">
                          Machines
                        </label>
                      </div>
                      <div class="form-check mb-2">
                        <input class="form-check-input" type="checkbox" value="" id="category3">
                        <label class="form-check-label" for="category3">
                          Accessories
                        </label>
                      </div>
                      <div class="form-check mb-2">
                        <input class="form-check-input" type="checkbox" value="" id="category4">
                        <label class="form-check-label" for="category4">
                          Cardio Equipment
                        </label>
                      </div>

                      <hr>

                      <h6 class="mb-3">Price Range</h6>
                      <div class="range">
                        <input type="range" class="form-range" min="0" max="1000" id="priceRange">
                        <div class="d-flex justify-content-between">
                          <span>$0</span>
                          <span>$1000</span>
                        </div>
                        <div class="mt-2">
                          <span>Selected: $<span id="priceValue">500</span></span>
                        </div>
                      </div>

                      <hr>

                      <h6 class="mb-3">Brand</h6>
                      <div class="form-check mb-2">
                        <input class="form-check-input" type="checkbox" value="" id="brand1">
                        <label class="form-check-label" for="brand1">
                          Pro Fitness
                        </label>
                      </div>
                      <div class="form-check mb-2">
                        <input class="form-check-input" type="checkbox" value="" id="brand2">
                        <label class="form-check-label" for="brand2">
                          GymShark
                        </label>
                      </div>
                      <div class="form-check mb-2">
                        <input class="form-check-input" type="checkbox" value="" id="brand3">
                        <label class="form-check-label" for="brand3">
                          FitPro
                        </label>
                      </div>
                      <div class="form-check mb-2">
                        <input class="form-check-input" type="checkbox" value="" id="brand4">
                        <label class="form-check-label" for="brand4">
                          PowerFit
                        </label>
                      </div>

                      <div class="mt-4">
                        <button class="btn btn-primary w-100">Apply Filters</button>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Products Grid -->
                <div class="col-lg-9">
                  <div class="d-flex justify-content-between align-items-center mb-4">
                    <div>
                      <span>Showing 12 of 36 products</span>
                    </div>
                    <div class="d-flex align-items-center">
                      <label for="sort" class="me-2">Sort by:</label>
                      <select class="form-select" id="sort">
                        <option>Popularity</option>
                        <option>Price: Low to High</option>
                        <option>Price: High to Low</option>
                        <option>Newest</option>
                      </select>
                    </div>
                  </div>


                  <div class="row g-4">
                    <c:forEach var="product" items="${products}">
                      <!-- Product Card 1 -->
                      <div class="col-lg-4 col-md-6">

                        <div class="card product-card">
                          <div class="product-image">
                            <img src="/client/img/${product.image}" alt="${product.name}" class="card-img-top">
                          </div>
                          <div class="card-body">
                            <h5 class="card-title">${product.name}</h5>
                            <p class="card-text text-muted">${product.shortDesc}</p>
                            <div class="d-flex justify-content-between align-items-center">
                              <span class="h5 mb-0">
                                <fmt:formatNumber value="${product.price}" type="number" /> Vnđ
                              </span>
                              <div>
                                <a href="/product/${product.id}" class="btn btn-outline-primary me-2">Details</a>
                                <form action="/add-product-to-cart/${product.id}" method="post">
                                  <div>
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                  </div>
                                  <button class="btn btn-primary my-2"> Add to cart</button>
                                </form>

                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </c:forEach>
                  </div>

                  <!-- Pagination -->
                  <div class="col-12">
                    <nav aria-label="Page navigation" class="mt-4">
                      <ul class="pagination justify-content-center">
                        <li class="page-item disabled">
                          <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                        </li>
                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                          <a class="page-link" href="#">Next</a>
                        </li>
                      </ul>
                    </nav>
                  </div>
                </div>
              </div>
            </div>
            </div>
          </section>
        </main>

        <jsp:include page="../layout/footer.jsp" />

        <!-- Toast for Add to Cart confirmation -->
        <div class="position-fixed bottom-0 end-0 p-3" style="z-index: 11">
          <div id="cartToast" class="toast hide" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="toast-header bg-success text-white">
              <strong class="me-auto">Added to Cart</strong>
              <button type="button" class="btn-close btn-close-white" data-bs-dismiss="toast"
                aria-label="Close"></button>
            </div>
            <div class="toast-body">
              Product has been added to your cart.
            </div>
          </div>
        </div>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Custom JS -->
        <script src="../client/js/script.js"></script>
        <!-- Product Page JS -->
        <script>
          document.addEventListener('DOMContentLoaded', function () {
            // Price range slider
            const priceRange = document.getElementById('priceRange');
            const priceValue = document.getElementById('priceValue');

            if (priceRange && priceValue) {
              priceRange.addEventListener('input', function () {
                priceValue.textContent = this.value;
              });
            }

            // Add to cart functionality for product list page
            const addToCartButtons = document.querySelectorAll('.add-to-cart');
            addToCartButtons.forEach(function (button) {
              button.addEventListener('click', function (e) {
                e.preventDefault();

                const productId = parseInt(this.getAttribute('data-product-id'));
                const productName = this.getAttribute('data-product-name');
                const productPrice = parseFloat(this.getAttribute('data-product-price'));
                const productImage = this.getAttribute('data-product-image');

                const product = {
                  id: productId,
                  name: productName,
                  price: productPrice,
                  image: productImage,
                  quantity: 1
                };

                // Add to cart (assuming shoppingCart is defined in script.js)
                if (typeof shoppingCart !== 'undefined') {
                  shoppingCart.addItem(product);

                  // Show toast
                  const toast = new bootstrap.Toast(document.getElementById('cartToast'));
                  toast.show();
                }
              });
            });
          });
        </script>
      </body>

      </html>