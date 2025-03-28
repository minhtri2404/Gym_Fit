// Shopping Cart Class
class ShoppingCart {
  constructor() {
    this.cart = [];
    this.loadCartFromLocalStorage();
  }

  // Add product to cart
  addItem(product) {
    const existingItem = this.cart.find(item => item.id === product.id);

    if (existingItem) {
      existingItem.quantity += product.quantity;
    } else {
      this.cart.push(Object.assign({}, product));
    }

    this.saveCartToLocalStorage();
    this.updateCartCount();
  }

  // Remove product from cart
  removeItem(productId) {
    this.cart = this.cart.filter(item => item.id !== productId);
    this.saveCartToLocalStorage();
    this.updateCartCount();
  }

  // Update quantity of a product
  updateQuantity(productId, quantity) {
    const item = this.cart.find(item => item.id === productId);
    if (item) {
      item.quantity = quantity;
      if (item.quantity <= 0) {
        this.removeItem(productId);
      } else {
        this.saveCartToLocalStorage();
      }
    }
    this.updateCartCount();
  }

  // Get cart items
  getItems() {
    return this.cart;
  }

  // Calculate total price
  getTotal() {
    return this.cart.reduce((total, item) => total + item.price * item.quantity, 0);
  }

  // Get cart count
  getCartCount() {
    return this.cart.reduce((count, item) => count + item.quantity, 0);
  }

  // Save cart to localStorage
  saveCartToLocalStorage() {
    localStorage.setItem('cart', JSON.stringify(this.cart));
  }

  // Load cart from localStorage
  loadCartFromLocalStorage() {
    const savedCart = localStorage.getItem('cart');
    if (savedCart) {
      try {
        this.cart = JSON.parse(savedCart);
      } catch (e) {
        console.error('Error parsing cart data from localStorage', e);
        this.cart = [];
      }
    }
    this.updateCartCount();
  }

  // Update cart count in the navbar
  updateCartCount() {
    const cartCountElements = document.querySelectorAll('.cart-count');
    const count = this.getCartCount();

    cartCountElements.forEach(element => {
      element.textContent = count.toString();
    });
  }

  // Clear cart
  clearCart() {
    this.cart = [];
    this.saveCartToLocalStorage();
    this.updateCartCount();
  }
}

// Initialize cart
const shoppingCart = new ShoppingCart();

// Document ready function
document.addEventListener('DOMContentLoaded', function () {
  // Update cart count on page load
  shoppingCart.updateCartCount();

  // Add to cart functionality on product detail page
  const addToCartBtn = document.getElementById('add-to-cart');
  if (addToCartBtn) {
    addToCartBtn.addEventListener('click', function () {
      const productId = parseInt(this.getAttribute('data-product-id') || '0');
      const productName = document.getElementById('product-name').textContent;
      const productPrice = parseFloat(document.getElementById('product-price').getAttribute('data-price'));
      const productImage = document.getElementById('product-main-image').getAttribute('src');
      const quantityInput = document.getElementById('quantity');
      const quantity = parseInt(quantityInput.value);

      const product = {
        id: productId,
        name: productName,
        price: productPrice,
        image: productImage,
        quantity: quantity
      };

      shoppingCart.addItem(product);

      // Show confirmation message
      const confirmationMessage = document.getElementById('add-confirmation');
      if (confirmationMessage) {
        confirmationMessage.classList.remove('d-none');
        setTimeout(function () {
          confirmationMessage.classList.add('d-none');
        }, 3000);
      }
    });
  }

  // Thumbnail click handling on product detail page
  const thumbnails = document.querySelectorAll('.thumbnail');
  if (thumbnails.length > 0) {
    thumbnails.forEach(function (thumbnail) {
      thumbnail.addEventListener('click', function () {
        const mainImage = document.getElementById('product-main-image');
        if (mainImage) {
          mainImage.src = this.src;

          // Update active thumbnail
          thumbnails.forEach(t => t.classList.remove('active'));
          this.parentElement.classList.add('active');
        }
      });
    });
  }

  // Cart page functionality
  const cartItemsContainer = document.getElementById('cart-items');
  if (cartItemsContainer) {
    renderCartItems();
  }

  // Checkout form submission
  const checkoutForm = document.getElementById('checkout-form');
  if (checkoutForm) {
    checkoutForm.addEventListener('submit', function (e) {
      e.preventDefault();

      // Simple validation here
      alert('Order placed successfully! Thank you for shopping with us.');
      shoppingCart.clearCart();
      window.location.href = '/index.html';
    });
  }
});

// Function to render cart items
function renderCartItems() {
  const cartItemsContainer = document.getElementById('cart-items');
  const cartTotalElement = document.getElementById('cart-total');
  const emptyCartMessage = document.getElementById('empty-cart-message');
  const checkoutButton = document.getElementById('checkout-button');

  if (!cartItemsContainer) return;

  const cartItems = shoppingCart.getItems();

  // Show empty cart message if cart is empty
  if (cartItems.length === 0) {
    if (emptyCartMessage) emptyCartMessage.classList.remove('d-none');
    if (checkoutButton) checkoutButton.classList.add('d-none');
    cartItemsContainer.innerHTML = '';
    if (cartTotalElement) cartTotalElement.textContent = '$0.00';
    return;
  }

  // Hide empty cart message and show checkout button
  if (emptyCartMessage) emptyCartMessage.classList.add('d-none');
  if (checkoutButton) checkoutButton.classList.remove('d-none');

  // Generate cart items HTML
  cartItemsContainer.innerHTML = cartItems.map(item => `
      <div class="card mb-3 cart-item">
        <div class="card-body">
          <div class="row align-items-center">
            <div class="col-md-2">
              <img src="${item.image}" alt="${item.name}" class="cart-item-image">
            </div>
            <div class="col-md-4">
              <h5 class="card-title">${item.name}</h5>
            </div>
            <div class="col-md-2">
              <p class="card-text">$${item.price.toFixed(2)}</p>
            </div>
            <div class="col-md-2">
              <div class="input-group">
                <button class="btn btn-outline-secondary quantity-decrease" data-product-id="${item.id}">-</button>
                <input type="number" class="form-control text-center quantity-input" value="${item.quantity}" min="1" data-product-id="${item.id}">
                <button class="btn btn-outline-secondary quantity-increase" data-product-id="${item.id}">+</button>
              </div>
            </div>
            <div class="col-md-1">
              <p class="card-text">$${(item.price * item.quantity).toFixed(2)}</p>
            </div>
            <div class="col-md-1">
              <button class="btn btn-danger remove-item" data-product-id="${item.id}">
                <i class="bi bi-trash"></i>
              </button>
            </div>
          </div>
        </div>
      </div>
    `).join('');

  // Update cart total
  if (cartTotalElement) {
    cartTotalElement.textContent = `$${shoppingCart.getTotal().toFixed(2)}`;
  }

  // Add event listeners to quantity buttons and remove buttons
  setupCartItemEventListeners();
}

// Function to set up event listeners for cart items
function setupCartItemEventListeners() {
  // Quantity decrease buttons
  const quantityDecreaseButtons = document.querySelectorAll('.quantity-decrease');
  quantityDecreaseButtons.forEach(function (button) {
    button.addEventListener('click', function () {
      const productId = parseInt(this.getAttribute('data-product-id'));
      const item = shoppingCart.getItems().find(item => item.id === productId);
      if (item && item.quantity > 1) {
        shoppingCart.updateQuantity(productId, item.quantity - 1);
        renderCartItems();
      }
    });
  });

  // Quantity increase buttons
  const quantityIncreaseButtons = document.querySelectorAll('.quantity-increase');
  quantityIncreaseButtons.forEach(function (button) {
    button.addEventListener('click', function () {
      const productId = parseInt(this.getAttribute('data-product-id'));
      const item = shoppingCart.getItems().find(item => item.id === productId);
      if (item) {
        shoppingCart.updateQuantity(productId, item.quantity + 1);
        renderCartItems();
      }
    });
  });

  // Quantity input fields
  const quantityInputs = document.querySelectorAll('.quantity-input');
  quantityInputs.forEach(function (input) {
    input.addEventListener('change', function () {
      const productId = parseInt(this.getAttribute('data-product-id'));
      const quantity = parseInt(this.value);
      if (quantity > 0) {
        shoppingCart.updateQuantity(productId, quantity);
        renderCartItems();
      } else {
        renderCartItems(); // Reset the input value if invalid
      }
    });
  });

  // Remove buttons
  const removeButtons = document.querySelectorAll('.remove-item');
  removeButtons.forEach(function (button) {
    button.addEventListener('click', function () {
      const productId = parseInt(this.getAttribute('data-product-id'));
      shoppingCart.removeItem(productId);
      renderCartItems();
    });
  });
}
