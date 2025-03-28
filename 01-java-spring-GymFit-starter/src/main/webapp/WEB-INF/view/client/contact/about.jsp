<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
      <!DOCTYPE html>
      <html lang="en">

      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>About Us - GymFit</title>
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
          <!-- Page Title -->
          <section class="bg-light py-5">
            <div class="container">
              <h1 class="fw-bold">About Us</h1>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="/">Home</a></li>
                  <li class="breadcrumb-item active" aria-current="page">About</li>
                </ol>
              </nav>
            </div>
          </section>

          <!-- Company Story -->
          <section class="py-5">
            <div class="container">
              <div class="row align-items-center">
                <div class="col-lg-6 mb-4 mb-lg-0">
                  <h2 class="mb-4">Our Story</h2>
                  <p>GymFit was founded in 2010 with a simple mission: to provide high-quality fitness equipment that
                    empowers
                    people to achieve their health and fitness goals. What started as a small local store has grown into
                    a
                    nationwide provider of premium gym equipment for both home and commercial use.</p>
                  <p>Our founder, John Smith, was frustrated with the lack of durable, well-designed fitness equipment
                    available to consumers. Drawing on his experience as a professional trainer, he set out to create a
                    company that would offer products that meet the highest standards of quality, functionality, and
                    durability.</p>
                  <p>Today, GymFit is recognized as a leader in the fitness equipment industry, with a reputation for
                    exceptional products, competitive prices, and outstanding customer service. We are proud to have
                    helped
                    thousands of customers build their dream home gyms and commercial fitness facilities.</p>
                  <div class="mt-4">
                    <a href="./products.html" class="btn btn-primary me-2">Browse Our Products</a>
                    <a href="./contact_us.html" class="btn btn-outline-secondary">Contact Us</a>
                  </div>
                </div>
                <div class="col-lg-6">
                  <img src="/client/img/about.jpg" alt="Gym interior" class="img-fluid rounded shadow">
                </div>
              </div>
            </div>
          </section>

          <!-- Our Mission -->
          <section class="py-5 bg-light">
            <div class="container">
              <div class="row align-items-center">
                <div class="col-lg-6 order-lg-2 mb-4 mb-lg-0">
                  <h2 class="mb-4">Our Mission</h2>
                  <p>At GymFit, our mission is to make fitness accessible to everyone by providing high-quality
                    equipment that
                    inspires and enables people to achieve their health and fitness goals. We believe that the right
                    equipment
                    can make all the difference in a person's fitness journey.</p>
                  <p>We strive to:</p>
                  <ul>
                    <li>Offer premium fitness equipment that combines functionality, durability, and value</li>
                    <li>Provide exceptional customer service and expert advice</li>
                    <li>Support our customers throughout their fitness journey</li>
                    <li>Continuously innovate and improve our product offerings</li>
                    <li>Promote healthy lifestyles and well-being in our communities</li>
                  </ul>
                </div>
                <div class="col-lg-6 order-lg-1">
                  <img src="/client/img/about2.jpg" alt="Person lifting weights" class="img-fluid rounded shadow">
                </div>
              </div>
            </div>
          </section>

          <!-- Our Values -->
          <section class="py-5">
            <div class="container">
              <h2 class="text-center mb-5">Our Core Values</h2>
              <div class="row g-4">
                <div class="col-md-4">
                  <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body text-center p-4">
                      <div class="mb-3">
                        <i class="bi bi-star-fill text-primary display-5"></i>
                      </div>
                      <h4 class="card-title">Quality</h4>
                      <p class="card-text">We are committed to offering products that meet the highest standards of
                        quality
                        and durability. Every item in our inventory is rigorously tested to ensure it delivers
                        exceptional
                        performance.</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body text-center p-4">
                      <div class="mb-3">
                        <i class="bi bi-people-fill text-primary display-5"></i>
                      </div>
                      <h4 class="card-title">Customer Focus</h4>
                      <p class="card-text">Our customers are at the heart of everything we do. We strive to provide an
                        exceptional shopping experience, from browsing our website to receiving your order and beyond.
                      </p>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body text-center p-4">
                      <div class="mb-3">
                        <i class="bi bi-lightbulb-fill text-primary display-5"></i>
                      </div>
                      <h4 class="card-title">Innovation</h4>
                      <p class="card-text">We continuously seek out new and improved products that can help our
                        customers
                        achieve their fitness goals more effectively. We stay at the forefront of industry trends and
                        technologies.</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>

          <!-- Team Section
          <section class="py-5 bg-light">
            <div class="container">
              <h2 class="text-center mb-5">Meet Our Team</h2>
              <div class="row g-4">
                <div class="col-lg-3 col-md-6">
                  <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body text-center p-4">
                      <img
                        src="https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"
                        alt="John Smith" class="team-member-image mb-3">
                      <h5 class="card-title">John Smith</h5>
                      <p class="text-muted">Founder & CEO</p>
                      <p class="card-text">Former professional trainer with over 20 years of experience in the fitness
                        industry.</p>
                      <div class="social-links">
                        <a href="#" class="text-dark me-2"><i class="bi bi-linkedin"></i></a>
                        <a href="#" class="text-dark me-2"><i class="bi bi-twitter"></i></a>
                        <a href="#" class="text-dark"><i class="bi bi-envelope"></i></a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-3 col-md-6">
                  <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body text-center p-4">
                      <img
                        src="https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=761&q=80"
                        alt="Sarah Johnson" class="team-member-image mb-3">
                      <h5 class="card-title">Sarah Johnson</h5>
                      <p class="text-muted">Product Director</p>
                      <p class="card-text">Fitness equipment specialist with a background in product development and
                        design.
                      </p>
                      <div class="social-links">
                        <a href="#" class="text-dark me-2"><i class="bi bi-linkedin"></i></a>
                        <a href="#" class="text-dark me-2"><i class="bi bi-twitter"></i></a>
                        <a href="#" class="text-dark"><i class="bi bi-envelope"></i></a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-3 col-md-6">
                  <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body text-center p-4">
                      <img
                        src="https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"
                        alt="Michael Chen" class="team-member-image mb-3">
                      <h5 class="card-title">Michael Chen</h5>
                      <p class="text-muted">Customer Service Manager</p>
                      <p class="card-text">Dedicated to ensuring that every customer has an exceptional experience with
                        GymFit.</p>
                      <div class="social-links">
                        <a href="#" class="text-dark me-2"><i class="bi bi-linkedin"></i></a>
                        <a href="#" class="text-dark me-2"><i class="bi bi-twitter"></i></a>
                        <a href="#" class="text-dark"><i class="bi bi-envelope"></i></a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-3 col-md-6">
                  <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body text-center p-4">
                      <img
                        src="https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"
                        alt="Emily Rodriguez" class="team-member-image mb-3">
                      <h5 class="card-title">Emily Rodriguez</h5>
                      <p class="text-muted">Marketing Director</p>
                      <p class="card-text">Creative marketing professional with a passion for fitness and digital
                        innovation.
                      </p>
                      <div class="social-links">
                        <a href="#" class="text-dark me-2"><i class="bi bi-linkedin"></i></a>
                        <a href="#" class="text-dark me-2"><i class="bi bi-twitter"></i></a>
                        <a href="#" class="text-dark"><i class="bi bi-envelope"></i></a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section> -->

          <!-- Testimonials -->
          <section class="py-5">
            <div class="container">
              <h2 class="text-center mb-5">What Our Customers Say</h2>
              <div class="row g-4">
                <div class="col-md-4">
                  <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body p-4">
                      <div class="text-warning mb-3">
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                      </div>
                      <p class="card-text">"I've purchased several pieces of equipment from GymFit for my home gym, and
                        I
                        couldn't be happier with the quality. The dumbbells and bench I ordered are sturdy, well-made,
                        and
                        have held up perfectly through daily use."</p>
                      <div class="d-flex align-items-center mt-3">
                        <div>
                          <h6 class="mb-0">Robert Wilson</h6>
                          <small class="text-muted">Home Gym Enthusiast</small>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body p-4">
                      <div class="text-warning mb-3">
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-half"></i>
                      </div>
                      <p class="card-text">"As a gym owner, finding reliable equipment suppliers is crucial. GymFit has
                        been
                        our go-to for the past three years. Their commercial-grade equipment is top-notch, and their
                        customer
                        service is exceptional. Highly recommended!"</p>
                      <div class="d-flex align-items-center mt-3">
                        <div>
                          <h6 class="mb-0">Jennifer Lopez</h6>
                          <small class="text-muted">Fitness Center Owner</small>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body p-4">
                      <div class="text-warning mb-3">
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                      </div>
                      <p class="card-text">"I'm a personal trainer and I often recommend GymFit to my clients. The
                        quality of
                        their equipment is excellent, and they offer great options for all fitness levels and budgets.
                        The
                        customer service is also top-notch."</p>
                      <div class="d-flex align-items-center mt-3">
                        <div>
                          <h6 class="mb-0">David Thompson</h6>
                          <small class="text-muted">Personal Trainer</small>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
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