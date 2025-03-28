<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
      <!DOCTYPE html>
      <html lang="en">

      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Contact Us - GymFit</title>
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
              <h1 class="fw-bold">Contact Us</h1>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="/">Home</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Contact</li>
                </ol>
              </nav>
            </div>
          </section>

          <!-- Contact Information and Form -->
          <section class="py-5">
            <div class="container">
              <div class="row g-5">
                <!-- Contact Information -->
                <div class="col-lg-4">
                  <h3 class="mb-4">Get In Touch</h3>
                  <p>We're here to help and answer any question you might have. We look forward to hearing from you.</p>

                  <div class="d-flex align-items-start mb-4">
                    <div class="contact-icon me-3">
                      <i class="bi bi-geo-alt-fill"></i>
                    </div>
                    <div>
                      <h5>Visit Us</h5>
                      <p class="mb-0">
                        1234 Fitness Street<br>
                        Los Angeles, CA 90001<br>
                        United States
                      </p>
                    </div>
                  </div>

                  <div class="d-flex align-items-start mb-4">
                    <div class="contact-icon me-3">
                      <i class="bi bi-telephone-fill"></i>
                    </div>
                    <div>
                      <h5>Call Us</h5>
                      <p class="mb-0">
                        <strong>Sales:</strong> +1 (800) 123-4567<br>
                        <strong>Support:</strong> +1 (800) 987-6543
                      </p>
                    </div>
                  </div>

                  <div class="d-flex align-items-start mb-4">
                    <div class="contact-icon me-3">
                      <i class="bi bi-envelope-fill"></i>
                    </div>
                    <div>
                      <h5>Email Us</h5>
                      <p class="mb-0">
                        <strong>Sales:</strong> sales@gymfit.com<br>
                        <strong>Support:</strong> support@gymfit.com<br>
                        <strong>General:</strong> info@gymfit.com
                      </p>
                    </div>
                  </div>

                  <div class="d-flex align-items-start mb-4">
                    <div class="contact-icon me-3">
                      <i class="bi bi-clock-fill"></i>
                    </div>
                    <div>
                      <h5>Business Hours</h5>
                      <p class="mb-0">
                        Monday - Friday: 9:00 AM - 6:00 PM<br>
                        Saturday: 10:00 AM - 4:00 PM<br>
                        Sunday: Closed
                      </p>
                    </div>
                  </div>

                  <div class="mt-5">
                    <h5>Follow Us</h5>
                    <div class="social-links mt-3">
                      <a href="#" class="me-3" style="font-size: 1.5rem;"><i class="bi bi-facebook"></i></a>
                      <a href="#" class="me-3" style="font-size: 1.5rem;"><i class="bi bi-twitter"></i></a>
                      <a href="#" class="me-3" style="font-size: 1.5rem;"><i class="bi bi-instagram"></i></a>
                      <a href="#" class="me-3" style="font-size: 1.5rem;"><i class="bi bi-linkedin"></i></a>
                      <a href="#" style="font-size: 1.5rem;"><i class="bi bi-youtube"></i></a>
                    </div>
                  </div>
                </div>

                <!-- Contact Form -->
                <div class="col-lg-8">
                  <h3 class="mb-4">Send Us a Message</h3>
                  <form id="contact-form">
                    <div class="row g-3">
                      <div class="col-md-6">
                        <label for="name" class="form-label">Your Name *</label>
                        <input type="text" class="form-control" id="name" required>
                      </div>
                      <div class="col-md-6">
                        <label for="email" class="form-label">Your Email *</label>
                        <input type="email" class="form-control" id="email" required>
                      </div>
                      <div class="col-md-6">
                        <label for="phone" class="form-label">Phone Number</label>
                        <input type="tel" class="form-control" id="phone">
                      </div>
                      <div class="col-md-6">
                        <label for="subject" class="form-label">Subject *</label>
                        <input type="text" class="form-control" id="subject" required>
                      </div>
                      <div class="col-12">
                        <label for="message" class="form-label">Your Message *</label>
                        <textarea class="form-control" id="message" rows="6" required></textarea>
                      </div>
                      <div class="col-12">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" value="" id="newsletter">
                          <label class="form-check-label" for="newsletter">
                            Subscribe to our newsletter for updates on new products and special offers
                          </label>
                        </div>
                      </div>
                      <div class="col-12 mt-4">
                        <button type="submit" class="btn btn-primary btn-lg">Send Message</button>
                      </div>
                    </div>
                  </form>

                  <!-- Success Message (Initially Hidden) -->
                  <div class="alert alert-success mt-4 d-none" id="form-success">
                    <h5><i class="bi bi-check-circle-fill me-2"></i> Thank you for your message!</h5>
                    <p class="mb-0">We have received your inquiry and will get back to you within 24 hours.</p>
                  </div>
                </div>
              </div>
            </div>
          </section>

          <!-- Google Map -->
          <section class="pb-5">
            <div class="container">
              <div class="ratio ratio-21x9">
                <iframe
                  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d423283.43556232506!2d-118.6407507317!3d34.02073049614415!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2sLos%20Angeles%2C%20CA%2C%20USA!5e0!3m2!1sen!2sus!4v1649361389017!5m2!1sen!2sus"
                  style="border:0;" allowfullscreen="" loading="lazy"></iframe>
              </div>
            </div>
          </section>

          <!-- FAQ Section -->
          <section class="py-5 bg-light">
            <div class="container">
              <h2 class="text-center mb-5">Frequently Asked Questions</h2>
              <div class="row justify-content-center">
                <div class="col-lg-10">
                  <div class="accordion" id="faqAccordion">
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="headingOne">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                          data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                          What are your shipping options?
                        </button>
                      </h2>
                      <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne"
                        data-bs-parent="#faqAccordion">
                        <div class="accordion-body">
                          We offer several shipping options including standard shipping (5-7 business days), express
                          shipping
                          (2-3 business days), and next-day delivery. Shipping costs vary based on the weight and
                          dimensions
                          of the products ordered, as well as your location. For orders over $100, we offer free
                          standard
                          shipping.
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="headingTwo">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                          data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                          What is your return policy?
                        </button>
                      </h2>
                      <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo"
                        data-bs-parent="#faqAccordion">
                        <div class="accordion-body">
                          We accept returns within 30 days of purchase. Items must be in their original condition and
                          packaging. Return shipping costs are the responsibility of the customer unless the item is
                          defective. Once we receive your return, we will process your refund within 5-7 business days.
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="headingThree">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                          data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                          Do you offer assembly services?
                        </button>
                      </h2>
                      <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree"
                        data-bs-parent="#faqAccordion">
                        <div class="accordion-body">
                          Yes, we offer professional assembly services for most of our larger equipment such as
                          treadmills,
                          power racks, and multi-gyms. Assembly services can be added during checkout. The cost varies
                          depending on the complexity of the equipment.
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="headingFour">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                          data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                          What warranty do your products come with?
                        </button>
                      </h2>
                      <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour"
                        data-bs-parent="#faqAccordion">
                        <div class="accordion-body">
                          Most of our products come with a manufacturer's warranty. The length and coverage of the
                          warranty
                          vary by product and manufacturer. Warranty information is available on each product page.
                          Additionally, we offer extended warranty options for most equipment at checkout.
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="headingFive">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                          data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                          Do you ship internationally?
                        </button>
                      </h2>
                      <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive"
                        data-bs-parent="#faqAccordion">
                        <div class="accordion-body">
                          Yes, we ship to selected countries internationally. International shipping costs, duties, and
                          taxes
                          vary by destination. Please note that international orders may be subject to customs duties
                          and
                          taxes, which are the responsibility of the recipient.
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
        <script>
          document.addEventListener('DOMContentLoaded', function () {
            // Contact form submission
            const contactForm = document.getElementById('contact-form');
            const formSuccess = document.getElementById('form-success');

            if (contactForm) {
              contactForm.addEventListener('submit', function (e) {
                e.preventDefault();

                // In a real application, you would send the form data to a server here
                // For this example, we'll just show the success message
                contactForm.classList.add('d-none');
                formSuccess.classList.remove('d-none');

                // Reset form
                contactForm.reset();

                // Optional: Scroll to the success message
                formSuccess.scrollIntoView({ behavior: 'smooth' });
              });
            }
          });
        </script>
      </body>

      </html>