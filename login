<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Login - Stoctmartket</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      background-color: #ffffff;
      color: #333;
    }

    .header {
      padding: 10px 15px 0 15px;
      background-color: #ffffff;
      position: fixed;
      top: 0;
      width: 100%;
      z-index: 1000;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    .logo {
      font-size: 16px;
      font-weight: bold;
    }

    .logo .golden {
      color: #f5b400;
    }

    .logo .fx {
      color: #007bff;
    }

    .logo .options {
      color: red;
    }

    .nav {
      margin-top: 25px;
      text-align: center;
      font-size: 16px;
    }

    .nav a {
      color: #007bff;
      text-decoration: none;
      margin: 0 10px;
    }

    .nav select {
      font-size: 14px;
      color: #007bff;
      border: 1px solid #ccc;
      border-radius: 4px;
      padding: 2px 4px;
      vertical-align: middle;
    }

    .fixed-ticker {
      position: fixed;
      top: 70px;
      width: 100%;
      z-index: 999;
      background: white;
      box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
    }

    .login-section {
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 160px 15px 60px 15px;
      background-color: #fff;
    }

    .login-box {
      width: 100%;
      max-width: 360px;
      text-align: center;
    }

    .login-box h2 {
      font-size: 24px;
      font-weight: bold;
      margin-bottom: 8px;
    }

    .login-box p {
      font-size: 16px;
      color: #777;
      margin-bottom: 20px;
    }

    .login-box input {
      width: 100%;
      height: 42px;
      margin-bottom: 14px;
      border: 1px solid #ccc;
      border-radius: 6px;
      padding-left: 10px;
      font-size: 15px;
    }

    .login-box button {
      width: 100%;
      height: 42px;
      background-color: #00b33c;
      color: white;
      font-size: 16px;
      border: none;
      border-radius: 6px;
      cursor: pointer;
    }

    .login-box button:hover {
      background-color: #009e36;
    }

    .login-box .extra-links {
      margin-top: 20px;
      font-size: 14px;
    }

    .login-box .extra-links a {
      display: block;
      color: #007bff;
      text-decoration: none;
      margin-bottom: 6px;
    }

    .login-box .extra-links a:hover {
      text-decoration: underline;
    }

    .forgot-popup-overlay {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: rgba(0,0,0,0.6);
      display: none;
      justify-content: center;
      align-items: center;
      z-index: 2000;
    }

    .forgot-popup-box {
      background: #fff;
      padding: 30px 20px;
      border-radius: 8px;
      width: 90%;
      max-width: 380px;
      box-shadow: 0 10px 30px rgba(0,0,0,0.25);
      text-align: center;
    }

    .forgot-popup-box h4 {
      font-size: 22px;
      margin-bottom: 10px;
      color: #222;
    }

    .forgot-instruction {
      color: #666;
      font-size: 14px;
      margin-bottom: 15px;
    }

    .forgot-popup-box input {
      width: 100%;
      padding: 12px;
      margin-bottom: 18px;
      border: 1px solid #ccc;
      border-radius: 6px;
      font-size: 15px;
    }

    .forgot-popup-actions {
      display: flex;
      justify-content: space-between;
    }

    .reset-btn {
      background: #00b33c;
      border: none;
      color: white;
      padding: 10px 18px;
      border-radius: 5px;
      cursor: pointer;
    }

    .cancel-btn {
      background: #ddd;
      border: none;
      color: #333;
      padding: 10px 18px;
      border-radius: 5px;
      cursor: pointer;
    }

    .reset-btn:hover {
      background: #00992f;
    }

    .cancel-btn:hover {
      background: #ccc;
    }

    #notificationBox {
      position: fixed;
      top: 80px;
      left: 50%;
      transform: translateX(-50%);
      background: #f8f9fa;
      border: 1px solid #ccc;
      padding: 15px 25px;
      border-radius: 6px;
      color: #28a745;
      display: none;
      z-index: 9999;
      min-width: 280px;
      text-align: center;
      font-weight: 500;
    }

    @media (max-width: 768px) {
      .login-section {
        padding-top: 220px;
      }
    }
  </style>
</head>
<body>

  <div class="header">
    <div class="logo">
      <span class="golden">Stoct</span><span class="fx">mart</span><span class="options">ket</span>
    </div>
    <div class="nav">
      <a href="/login">Login</a>
      <a href="/register">Register</a>
          <a href="">Language</a>
  
      </select>
    </div>
  </div>
<!-- Fixed Ticker (White Version) -->
<div class="fixed-ticker" style="position: relative;">
  <div class="tradingview-widget-container">
    <div class="tradingview-widget-container__widget"></div>
    <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-ticker-tape.js">
    {
      "symbols": [
        { "proName": "FOREXCOM:SPXUSD", "title": "S&P 500" },
        { "proName": "FOREXCOM:NSXUSD", "title": "US 100" },
        { "proName": "FX_IDC:EURUSD", "title": "EUR/USD" },
        { "proName": "BITSTAMP:BTCUSD", "title": "Bitcoin" },
        { "proName": "BITSTAMP:ETHUSD", "title": "Ethereum" }
      ],
      "showSymbolLogo": true,
      "colorTheme": "light",
      "isTransparent": false,
      "displayMode": "compact",
      "locale": "en"
    }
    </script>
  </div>

  <!-- Overlay Div to Intercept Clicks -->
  <div 
    onclick="window.location.href='/login';" 
    style="
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      cursor: pointer;
      z-index: 999;
    ">
  </div>
</div>
    <!-- Optional Ticker -->
  </div>

  <section class="login-section">
    <div class="login-box">
      <h2>Welcome Back!</h2>
      <p>Login to your Trading Dashboard</p>
      <form id="loginForm">
        <input type="email" id="email" placeholder="Email" required />
        <input type="password" id="password" placeholder="Password" required />
        <button type="submit">Login</button>
      </form>
      <hr />
      <div class="extra-links">
        <a href="#" onclick="openForgotPopup()">Forgot Password?</a>
        <a href="register.html">Don't have an account? Sign up!</a>
      </div>
    </div>
  </section>

  <!-- Notification Box -->
  <div id="notificationBox"></div>

  <!-- Forgot Password -->
  <div id="forgotPasswordPopup" class="forgot-popup-overlay">
    <div class="forgot-popup-box">
      <h4>Reset Password</h4>
      <p class="forgot-instruction">Enter your email to receive a reset link.</p>
      <input type="email" id="resetEmail" placeholder="Your email" required />
      <div class="forgot-popup-actions">
        <button onclick="closeForgotPopup()" class="cancel-btn">Cancel</button>
        <button onclick="submitForgotPassword()" class="reset-btn">Reset Password</button>
      </div>
    </div>
  </div>

  <!-- Firebase SDK -->
<script src="https://www.gstatic.com/firebasejs/9.23.0/firebase-app-compat.js"></script>
<script src="https://www.gstatic.com/firebasejs/9.23.0/firebase-auth-compat.js"></script>
<script>
  const firebaseConfig = {
  apiKey: "AIzaSyD1nlcsxR7SkaB4hPVLcehdjV1bQPUXV5I",
  authDomain: "stoctmartket-en.firebaseapp.com", // Assuming this typo is intentional and matches your actual Firebase project ID
  projectId: "stoctmartket-en",
  storageBucket: "stoctmartket-en.appspot.com", // FIXED: Correct Firebase storage bucket domain
  messagingSenderId: "925990118609",
  appId: "1:925990118609:web:77bdfd4c16bc584070d1f0"
};
  firebase.initializeApp(firebaseConfig);
  const auth = firebase.auth();

  // Check if the user is already logged in
  firebase.auth().onAuthStateChanged(function(user) {
    if (user) {
      // User is signed in, redirect to dashboard
      window.location.href = "/dashboard";
    }
  });

  // Function to show messages
  function showMessage(message, isError = false) {
    const box = document.getElementById("notificationBox");
    box.textContent = message;
    box.style.borderColor = isError ? "#dc3545" : "#28a745";
    box.style.color = isError ? "#dc3545" : "#28a745";
    box.style.display = "block";
    setTimeout(() => {
      box.style.display = "none";
    }, 4000);
  }

  // Handle login form submission
  document.getElementById("loginForm").addEventListener("submit", async (e) => {
    e.preventDefault();
    const email = document.getElementById("email").value.trim();
    const password = document.getElementById("password").value;

    try {
      await auth.signInWithEmailAndPassword(email, password);
      showMessage("Login successful. Redirecting...", false);
      setTimeout(() => {
        window.location.href = "/dashboard"; // Redirect to dashboard after successful login
      }, 2000);
    } catch (error) {
      let message = "An error occurred. Please try again.";
      if (error.code === "auth/user-not-found") {
        message = "No account found with this email address.";
      } else if (error.code === "auth/wrong-password") {
        message = "Incorrect password. Please try again.";
      } else if (error.code === "auth/invalid-email") {
        message = "The email address is invalid.";
      }
      showMessage(message, true);
    }
  });

  // Handle forgot password popup
  function openForgotPopup() {
    document.getElementById("forgotPasswordPopup").style.display = "flex";
  }

  function closeForgotPopup() {
    document.getElementById("forgotPasswordPopup").style.display = "none";
  }

  async function submitForgotPassword() {
    const email = document.getElementById("resetEmail").value.trim();
    if (!email) {
      showMessage("Please enter your email address.", true);
      return;
    }

    try {
      await firebase.auth().sendPasswordResetEmail(email);
      showMessage("Password reset link has been sent to your email.", false);
      closeForgotPopup();
    } catch (error) {
      let message = "Unable to send reset email. Please try again.";
      if (error.code === "auth/user-not-found") {
        message = "No user found with this email address.";
      } else if (error.code === "auth/invalid-email") {
        message = "Please enter a valid email address.";
      }
      showMessage(message, true);
    }
  }

  window.addEventListener("click", function (e) {
    const popup = document.getElementById("forgotPasswordPopup");
    if (e.target === popup) {
      closeForgotPopup();
    }
  });
</script>
  <style>
  .gfo-footer {
    background-color: #000000;
    color: #ccc;
    font-family: Arial, sans-serif;
    padding: 40px 20px;
  }
  .gfo-footer-container {
    max-width: 800px;
    margin: auto;
    line-height: 1.8;
  }
  .gfo-footer-title {
    font-size: 20px;
    color: white;
    font-weight: bold;
  }
  .gfo-footer-section-title {
    color: white;
    font-weight: bold;
    margin-top: 20px;
  }
  .gfo-footer a {
    color: #ccc;
    text-decoration: none;
  }
  .gfo-footer-form {
    margin-top: 10px;
    display: flex;
    max-width: 400px;
  }
  .gfo-footer-input {
    flex: 1;
    padding: 10px;
    border: none;
    border-radius: 4px 0 0 4px;
  }
  .gfo-footer-button {
    background-color: #2ecc71;
    border: none;
    padding: 10px 20px;
    border-radius: 0 4px 4px 0;
    color: white;
  }
  .gfo-footer-copy {
    text-align: center;
    color: #888;
    margin-top: 30px;
  }
</style>

<footer class="gfo-footer">
  <div class="gfo-footer-container">
    <p class="gfo-footer-title">Stoctmartket</p>
    <p>35 E 22nd, New York, NY 10165, USA</p>
    <p><a href="mailto:support@Stoctmartket.com">support@Stoctmartket.com</a></p>

    <p class="gfo-footer-section-title">About Us</p>
    <p>Our Company</p>
    <p>Forex</p>
    <p>Commodities</p>
    <p>Crypto</p>
    <p>Contact Us</p>
    <p>FAQs</p>

    <p class="gfo-footer-section-title">Where to buy Bitcoin</p>
    <p>Luno</p>
    <p>LocalBitcoin</p>
    <p>Paxful</p>
    <p>Coinbase</p>
    <p>Remitano</p>

    <p class="gfo-footer-section-title">Newsletter</p>
    <p>Get latest updates and offers.</p>
    <form class="gfo-footer-form">
      <input type="email" class="gfo-footer-input" placeholder="Enter your email">
      <button type="submit" class="gfo-footer-button"></button>
    </form>

    <p class="gfo-footer-copy">© Copyright Stoctmartket 2010 - 2021. All right reserved.</p>
  </div>
</footer>

  <!-- WhatsApp Floating Icon -->
  <a id="waIcon" href="#" target="_blank"
     style="position:fixed;bottom:25px;left:20px;width:60px;height:60px;background:#25D366;border-radius:50%;display:flex;align-items:center;justify-content:center;box-shadow:0 3px 8px rgba(0,0,0,0.3);z-index:1000;">
    <img src="https://img.icons8.com/color/48/whatsapp.png" style="width:32px;height:32px;">
  </a>
</section>
</body>
</html>