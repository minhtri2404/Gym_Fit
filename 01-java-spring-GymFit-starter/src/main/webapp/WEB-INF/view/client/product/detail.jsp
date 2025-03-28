<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
      <!DOCTYPE html>
      <html lang="en">

      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Premium Dumbbell Set - GymFit</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Bootstrap Icons -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="../client/css/style.css" />
      </head>

      <body>
        <jsp:include page="../layout/header.jsp" />

        <main>
          <!-- Breadcrumb -->
          <section class="bg-light py-3">
            <div class="container">
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb mb-0">
                  <li class="breadcrumb-item"><a href="/">Home</a></li>
                  <li class="breadcrumb-item"><a href="/product">Products</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Premium Dumbbell Set</li>
                </ol>
              </nav>
            </div>
          </section>

          <!-- Product Detail -->
          <section class="py-5">
            <div class="container">
              <div class="row">
                <!-- Product Images -->
                <div class="col-md-6 mb-4">
                  <div class="product-detail-image mb-3">
                    <img src="/client/img/${product.image}" alt="Premium Dumbbell Set" class="img-fluid rounded"
                      id="product-main-image">
                  </div>
                  <!-- <div class="row g-2">
                    <div class="col-3">
                      <div class="thumbnail-container active">
                        <img src="/client/img/${product.image}" alt="Thumbnail 1" class="img-fluid rounded thumbnail">
                      </div>
                    </div>
                    <div class="col-3">
                      <div class="thumbnail-container">
                        <img src="/client/img/${product.image}" alt="Thumbnail 2" class="img-fluid rounded thumbnail">
                      </div>
                    </div>
                    <div class="col-3">
                      <div class="thumbnail-container">
                        <img src="/client/img/${product.image}" alt="Thumbnail 3" class="img-fluid rounded thumbnail">
                      </div>
                    </div>
                    <div class="col-3">
                      <div class="thumbnail-container">
                        <img src="/client/img/${product.image}" alt="Thumbnail 4" class="img-fluid rounded thumbnail">
                      </div>
                    </div>
                  </div> -->
                </div>

                <!-- Product Info -->
                <div class="col-md-6">
                  <h1 id="product-name">${product.name}</h1>
                  <p class="text-muted mb-4">${product.shortDesc}</p>

                  <div class="mb-3">
                    <span class="h4 me-2" id="product-price" data-price="${product.price}">
                      <fmt:formatNumber value="${product.price}" type="number" />
                    </span>
                  </div>

                  <div class="mb-4">
                    <div class="d-flex align-items-center mb-2">
                      <span class="me-2">Rating:</span>
                      <div class="text-warning">
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-half"></i>
                      </div>
                      <span class="ms-2">(120 reviews)</span>
                    </div>

                    <div class="d-flex align-items-center mb-2">
                      <span class="me-2">Availability:</span>
                      <span class="text-success"><i class="bi bi-check-circle-fill"></i> In Stock</span>
                    </div>

                    <div class="d-flex align-items-center">
                      <span class="me-2"> Target:</span>
                      <span>${product.target}</span>
                    </div>
                  </div>

                  <div class="mb-4">
                    <h5>Description</h5>
                    <p>${product.detailDesc}</p>
                    <!-- <ul>
                      <li>Hexagonal design prevents rolling</li>
                      <li>Rubber-coated for floor protection</li>
                      <li>Chrome-plated handles for secure grip</li>
                      <li>Includes pairs: 5, 10, 15, 20, and 25 lbs</li>
                      <li>Storage rack included</li>
                    </ul> -->
                  </div>

                  <div class="mb-4">
                    <div class="row align-items-center">
                      <div class="col-md-3">
                        <label for="quantity" class="form-label">Quantity</label>
                      </div>
                      <div class="col-md-9">
                        <div class="input-group" style="width: 150px;">
                          <button class="btn btn-outline-secondary" type="button" id="quantity-decrease">-</button>
                          <input type="number" class="form-control text-center" id="quantity" value="1" min="1">
                          <button class="btn btn-outline-secondary" type="button" id="quantity-increase">+</button>
                        </div>
                      </div>
                    </div>
                  </div>


                  <form action="/add-product-to-cart/${product.id}" method="post">
                    <div class="d-grid gap-2">
                      <div>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                      </div>
                      <button class="btn btn-primary btn-lg" id="add-to-cart" data-product-id="${product.id}">
                        <i class="bi bi-cart-plus me-2"></i> Add to Cart
                      </button>
                    </div>
                  </form>
                  <div class="d-grid gap-2">
                    <button class="btn btn-outline-secondary btn-lg">
                      <i class="bi bi-heart me-2"></i> Add to Wishlist
                    </button>
                  </div>

                  <!-- Add to Cart Confirmation -->
                  <div class="alert alert-success mt-3 d-none" id="add-confirmation">
                    <i class="bi bi-check-circle-fill me-2"></i> Product added to your cart!
                  </div>
                </div>
              </div>

              <!-- Product Tabs -->
              <div class="row mt-5">
                <div class="col-12">
                  <ul class="nav nav-tabs" id="productTabs" role="tablist">
                    <li class="nav-item" role="presentation">
                      <button class="nav-link active" id="specs-tab" data-bs-toggle="tab" data-bs-target="#specs"
                        type="button" role="tab" aria-controls="specs" aria-selected="true">Specifications</button>
                    </li>
                    <li class="nav-item" role="presentation">
                      <button class="nav-link" id="reviews-tab" data-bs-toggle="tab" data-bs-target="#reviews"
                        type="button" role="tab" aria-controls="reviews" aria-selected="false">Reviews</button>
                    </li>
                    <li class="nav-item" role="presentation">
                      <button class="nav-link" id="shipping-tab" data-bs-toggle="tab" data-bs-target="#shipping"
                        type="button" role="tab" aria-controls="shipping" aria-selected="false">Shipping &
                        Returns</button>
                    </li>
                  </ul>
                  <div class="tab-content border border-top-0 p-4" id="productTabsContent">
                    <div class="tab-pane fade show active" id="specs" role="tabpanel" aria-labelledby="specs-tab">
                      <h5>Technical Specifications</h5>
                      <div class="table-responsive">
                        <table class="table table-striped">
                          <tbody>
                            <tr>
                              <th scope="row">Material</th>
                              <td>Rubber-coated iron with chrome-plated handles</td>
                            </tr>
                            <tr>
                              <th scope="row">Weight Range</th>
                              <td>5, 10, 15, 20, and 25 lbs (pairs)</td>
                            </tr>
                            <tr>
                              <th scope="row">Handle Diameter</th>
                              <td>1.15 inches (29mm)</td>
                            </tr>
                            <tr>
                              <th scope="row">Handle Length</th>
                              <td>5.5 inches</td>
                            </tr>
                            <tr>
                              <th scope="row">Shape</th>
                              <td>Hexagonal</td>
                            </tr>
                            <tr>
                              <th scope="row">Dimensions (per dumbbell)</th>
                              <td>Varies by weight, approx. 10-14 inches in length</td>
                            </tr>
                            <tr>
                              <th scope="row">Total Set Weight</th>
                              <td>150 lbs</td>
                            </tr>
                            <tr>
                              <th scope="row">Warranty</th>
                              <td>2 years</td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                    <div class="tab-pane fade" id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
                      <div class="d-flex justify-content-between align-items-center mb-4">
                        <h5 class="mb-0">Customer Reviews</h5>
                        <button class="btn btn-outline-primary">Write a Review</button>
                      </div>

                      <!-- Review 1 -->
                      <div class="card mb-3">
                        <div class="card-body">
                          <div class="d-flex justify-content-between mb-2">
                            <div>
                              <span class="fw-bold">John D.</span>
                              <div class="text-warning">
                                <i class="bi bi-star-fill"></i>
                                <i class="bi bi-star-fill"></i>
                                <i class="bi bi-star-fill"></i>
                                <i class="bi bi-star-fill"></i>
                                <i class="bi bi-star-fill"></i>
                              </div>
                            </div>
                            <small class="text-muted">2 months ago</small>
                          </div>
                          <h6>Great quality dumbbells!</h6>
                          <p>These dumbbells are exactly what I needed for my home gym. The rubber coating is high
                            quality and
                            the hexagonal shape keeps them from rolling. Highly recommend for anyone looking to strength
                            train
                            at home.</p>
                        </div>
                      </div>

                      <!-- Review 2 -->
                      <div class="card mb-3">
                        <div class="card-body">
                          <div class="d-flex justify-content-between mb-2">
                            <div>
                              <span class="fw-bold">Sarah M.</span>
                              <div class="text-warning">
                                <i class="bi bi-star-fill"></i>
                                <i class="bi bi-star-fill"></i>
                                <i class="bi bi-star-fill"></i>
                                <i class="bi bi-star-fill"></i>
                                <i class="bi bi-star"></i>
                              </div>
                            </div>
                            <small class="text-muted">1 month ago</small>
                          </div>
                          <h6>Solid build, a bit pricey</h6>
                          <p>The quality is excellent and they look great in my home gym. My only complaint is that
                            they're a
                            bit pricey compared to other options, but you get what you pay for in terms of durability.
                          </p>
                        </div>
                      </div>

                      <!-- Review 3 -->
                      <div class="card">
                        <div class="card-body">
                          <div class="d-flex justify-content-between mb-2">
                            <div>
                              <span class="fw-bold">Mike T.</span>
                              <div class="text-warning">
                                <i class="bi bi-star-fill"></i>
                                <i class="bi bi-star-fill"></i>
                                <i class="bi bi-star-fill"></i>
                                <i class="bi bi-star-fill"></i>
                                <i class="bi bi-star-half"></i>
                              </div>
                            </div>
                            <small class="text-muted">2 weeks ago</small>
                          </div>
                          <h6>Perfect for home workouts</h6>
                          <p>These dumbbells are perfect for my home workout routine. The weight progression is ideal
                            for
                            building strength gradually. The rack that comes with it helps keep my workout space
                            organized.
                          </p>
                        </div>
                      </div>
                    </div>
                    <div class="tab-pane fade" id="shipping" role="tabpanel" aria-labelledby="shipping-tab">
                      <h5>Shipping Information</h5>
                      <p>We offer several shipping options to meet your needs:</p>
                      <ul>
                        <li><strong>Standard Shipping:</strong> 5-7 business days (Free for orders over $100)</li>
                        <li><strong>Express Shipping:</strong> 2-3 business days ($15.99)</li>
                        <li><strong>Next Day Delivery:</strong> 1 business day ($29.99)</li>
                      </ul>
                      <p>Please note that due to the weight of this item, additional shipping fees may apply for certain
                        locations.</p>

                      <h5 class="mt-4">Return Policy</h5>
                      <p>We want you to be completely satisfied with your purchase. If for any reason you're not, here's
                        our
                        return policy:</p>
                      <ul>
                        <li>Returns accepted within 30 days of receipt</li>
                        <li>Item must be in original condition and packaging</li>
                        <li>Return shipping fees are the responsibility of the customer unless the item is defective
                        </li>
                        <li>Refunds will be processed within 5-7 business days after receiving the returned item</li>
                      </ul>
                      <p>For defective items, please contact our customer service team within 48 hours of receiving your
                        order.</p>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Related Products
              <div class="row mt-5">
                <div class="col-12">
                  <h3 class="mb-4">You May Also Like</h3>
                </div>

                <div class="col-lg-3 col-md-6 mb-4">
                  <div class="card product-card">
                    <div class="product-image">
                      <img
                        src="https://images.unsplash.com/photo-1580261450046-d0a30080dc9b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1009&q=80"
                        alt="Kettlebell" class="card-img-top">
                    </div>
                    <div class="card-body">
                      <h5 class="card-title">Cast Iron Kettlebell</h5>
                      <p class="card-text text-muted">35 lbs, Professional Grade</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <span class="h5 mb-0">$59.99</span>
                        <a href="./product_detail.html?id=2" class="btn btn-outline-primary">View Details</a>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="col-lg-3 col-md-6 mb-4">
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

                <div class="col-lg-3 col-md-6 mb-4">
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

                <div class="col-lg-3 col-md-6 mb-4">
                  <div class="card product-card">
                    <div class="product-image">
                      <img
                        src="https://images.unsplash.com/photo-1583454110551-21f2fa2afe61?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"
                        alt="Barbell" class="card-img-top">
                    </div>
                    <div class="card-body">
                      <h5 class="card-title">Olympic Barbell</h5>
                      <p class="card-text text-muted">7ft, 45 lbs, knurled grip</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <span class="h5 mb-0">$199.99</span>
                        <a href="./product_detail.html?id=9" class="btn btn-outline-primary">View Details</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div> -->
            </div>
          </section>
        </main>

        <jsp:include page="../layout/footer.jsp" />

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Custom JS -->
        <script src="../client/js/script.js"></script>
        <script>
          document.addEventListener('DOMContentLoaded', function () {
            // Quantity increase/decrease
            const quantityInput = document.getElementById('quantity');
            const quantityDecrease = document.getElementById('quantity-decrease');
            const quantityIncrease = document.getElementById('quantity-increase');

            if (quantityDecrease && quantityIncrease && quantityInput) {
              quantityDecrease.addEventListener('click', function () {
                let value = parseInt(quantityInput.value);
                if (value > 1) {
                  quantityInput.value = value - 1;
                }
              });

              quantityIncrease.addEventListener('click', function () {
                let value = parseInt(quantityInput.value);
                quantityInput.value = value + 1;
              });
            }
          });
        </script>
      </body>

      </html>