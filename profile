<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
  <title>Profile –  AFO</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet" />
<style>
  * {
    box-sizing: border-box;
    -webkit-tap-highlight-color: transparent;
  }

  body {
    margin: 0;
    font-family: 'Inter', sans-serif;
    background: #f9fafb;
    color: #1e293b;
    min-height: 100vh;
    padding-bottom: 4rem;
  }

  header {
    background: #ffffff;
    padding: 1rem 1.2rem;
    display: flex;
    align-items: center;
    border-bottom: 1px solid #e2e8f0;
    box-shadow: 0 1px 4px rgba(0, 0, 0, 0.03);
  }

  .back-button {
    background-color: #f1f3f5;
    color: #000;
    border: none;
    padding: 0.55rem 1.1rem;
    font-size: 0.9rem;
    border-radius: 8px;
    cursor: pointer;
    font-weight: 500;
    text-decoration: none;
    display: flex;
    align-items: center;
    gap: 0.4rem;
    transition: background 0.3s ease;
  }

  .back-button i {
    font-size: 1rem;
  }

  .back-button:hover {
    background-color: #2563eb;
  }

  .breadcrumb {
    padding: 1rem 1.2rem;
    font-size: 0.85rem;
    color: #000;
  }

  .container {
    max-width: 560px;
    margin: 1.2rem auto;
    background: #ffffff;
    padding: 1.8rem;
    border-radius: 14px;
    box-shadow: 0 8px 24px rgba(0, 0, 0, 0.05);
    border: 1px solid #e2e8f0;
  }

  .section-title {
    font-size: 1.4rem;
    font-weight: 600;
    margin-bottom: 1.5rem;
    text-align: center;
    color: #0f172a;
  }

  label {
    font-size: 0.88rem;
    display: block;
    margin-bottom: 0.35rem;
    color: #000;
  }

  input, select {
    width: 100%;
    padding: 0.65rem 0.75rem;
    margin-bottom: 1.2rem;
    border-radius: 8px;
    border: 1px solid #cbd5e1;
    background-color: #ffffff;
    color: #1e293b;
    font-size: 0.95rem;
    transition: border-color 0.2s ease;
  }

  input:focus, select:focus {
    border-color: #000;
    outline: none;
  }

  input[disabled] {
    background-color: #f1f5f9;
    color: #94a3b8;
  }

  button {
    width: 100%;
    padding: 0.85rem;
    font-size: 1rem;
    font-weight: 600;
    background-color: #3b82f6;
    color: white;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 0.5rem;
    margin-top: 1rem;
    transition: background-color 0.25s ease;
  }

  button:hover {
    background-color: #2563eb;
  }

  #uploadStatus {
    font-size: 0.85rem;
    color: #0284c7;
    margin-top: -0.5rem;
    margin-bottom: 1rem;
  }

  #kycStatusDisplay {
    font-size: 0.9rem;
    color: #334155;
    margin-bottom: 1rem;
  }

  .toast {
    position: fixed;
    bottom: 20px;
    left: 50%;
    transform: translateX(-50%);
    background-color: #16a34a;
    padding: 12px 20px;
    border-radius: 6px;
    color: white;
    font-size: 0.9rem;
    display: none;
    z-index: 9999;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
  }

  @media screen and (max-width: 480px) {
    .container {
      margin: 1rem;
      padding: 1.2rem;
    }

    .section-title {
      font-size: 1.2rem;
    }

    button {
      font-size: 0.95rem;
    }

    .back-button {
      font-size: 0.85rem;
      padding: 0.5rem 1rem;
    }
  }
</style>
</head>
<body>
  <div class="toast" id="toast"><i class="fas fa-check-circle"></i> Saved successfully</div>

  <header>
    
    <a href="javascript:history.back()" class="back-button">
      <i class="fas fa-arrow-left"></i> Back
    </a>
    <!-- Notification Center -->
<div style="margin-left: auto; position: relative;">
  <button id="notifBtn" style="
    background: #000;
    border: none;
    cursor: pointer;
    padding: 0.5rem;
    position: relative;
  ">
    <i class="fas fa-bell" style="color: #ffffff; font-size: 1.25rem;"></i>
    <span id="notifBadge" style="
      position: absolute;
      top: 4px;
      right: 4px;
      width: 10px;
      height: 10px;
      background: #ef4444;
      border-radius: 50%;
      display: none;
      box-shadow: 0 0 6px rgba(0, 0, 0, 0.4);
    "></span>
  </button>

  <div id="notifDropdown" style="
    position: absolute;
    top: 48px;
    right: 0;
    width: 280px;
    background: #fff;
    border: 1px solid #334155;
    border-radius: 12px;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
    display: none;
    overflow: hidden;
    z-index: 999;
  ">
    <div style="
      padding: 1rem;
      background: #fffffff;
      color: #000;
      font-weight: 600;
      border-bottom: 1px solid #334155;
    ">
      <i class="fas fa-bell" style="color: #3b82f6; margin-right: 6px;"></i>
      Notifications
    </div>
    <ul id="notifList" style="
      list-style: none;
      margin: 0;
      padding: 0;
      max-height: 250px;
      overflow-y: auto;
    ">
      <!-- JS will insert alerts here -->
    </ul>
    <div style="
      padding: 0.8rem;
      text-align: center;
      font-size: 0.85rem;
      color: #94a3b8;
      border-top: 1px solid #334155;
    ">
      No more notifications
    </div>
  </div>
</div>
  </header>

  <div class="breadcrumb">Dashboard / Profile</div>

<!-- Profile Completion Indicator -->
<div class="profile-progress" style="margin: 0 auto; max-width: 540px; padding: 0 1.2rem 1rem;">
  <label style="font-size: 0.85rem; color: #000; display: block; margin-bottom: 0.35rem;">
    Profile Completion: <span id="completionText">0%</span>
  </label>
  <div style="background: #f1f3f5; border-radius: 8px; overflow: hidden; height: 12px;">
    <div id="completionBar" style="height: 100%; width: 0%; background: #3b82f6; transition: width 0.5s;"></div>
  </div>
</div>
  <div class="container">
    <div class="section-title"><i class="fas fa-user-edit"></i> Edit Profile</div>

    <label><i class="fas fa-user"></i> First Name</label>
    <input type="text" id="firstName" placeholder="John"/>

    <label><i class="fas fa-user"></i> Last Name</label>
    <input type="text" id="lastName" placeholder="Doe"/>

    <label><i class="fas fa-phone-alt"></i> Phone Number</label>
    <input type="text" id="phone" placeholder="+1234567890"/>

    <label><i class="fas fa-location-pin"></i> Zip Code</label>
    <input type="text" id="zip" placeholder="10001"/>

    <label><i class="fas fa-flag"></i> Country</label>
    <input type="text" id="country" placeholder="USA"/>

    <label><i class="fas fa-envelope"></i> Email</label>
    <input type="email" id="email" disabled />

    <label><i class="fas fa-venus-mars"></i> Gender</label>
    <select id="gender">
      <option value="">Select Gender</option>
      <option value="Male">Male</option>
      <option value="Female">Female</option>
    </select>

    <div id="kycStatusDisplay"></div>

    <div id="kycSection">
      <label for="kycFile"><i class="fas fa-file-upload"></i> Upload KYC</label>
      <input type="file" id="kycFile" accept=".jpg,.jpeg,.png,.pdf"/>
      <div id="uploadStatus"></div>
    </div>

    <button onclick="saveProfile()">
      <i class="fas fa-save"></i> Save Changes
    </button>
  </div>

<script type="module">
  import { initializeApp } from "https://www.gstatic.com/firebasejs/9.22.2/firebase-app.js";
  import {
    getFirestore,
    doc,
    setDoc,
    getDoc,
    collection,
    query,
    orderBy,
    onSnapshot,
    where
  } from "https://www.gstatic.com/firebasejs/9.22.2/firebase-firestore.js";
  import { getAuth, onAuthStateChanged } from "https://www.gstatic.com/firebasejs/9.22.2/firebase-auth.js";

  const firebaseConfig = {
  apiKey: "AIzaSyD1nlcsxR7SkaB4hPVLcehdjV1bQPUXV5I",
  authDomain: "stoctmartket-en.firebaseapp.com", // Assuming this typo is intentional and matches your actual Firebase project ID
  projectId: "stoctmartket-en",
  storageBucket: "stoctmartket-en.appspot.com", // FIXED: Correct Firebase storage bucket domain
  messagingSenderId: "925990118609",
  appId: "1:925990118609:web:77bdfd4c16bc584070d1f0"
};

  const app = initializeApp(firebaseConfig);
  const db = getFirestore(app);
  const auth = getAuth();

  let currentUID = null;
  const notifList = document.getElementById("notifList");
  const notifBadge = document.getElementById("notifBadge");
  const notifDropdown = document.getElementById("notifDropdown");
  const notifBtn = document.getElementById("notifBtn");

  function showToast(message) {
    const toast = document.getElementById("toast");
    toast.innerHTML = `<i class="fas fa-check-circle"></i> ${message}`;
    toast.style.display = "block";
    setTimeout(() => (toast.style.display = "none"), 3000);
  }

  function renderNotifications(data) {
    notifList.innerHTML = "";
    data.forEach((doc) => {
      const n = doc.data();
      const li = document.createElement("li");
      li.style.cssText = `
        padding: 0.85rem 1rem;
        border-bottom: 1px solid #334155;
        display: flex;
        align-items: center;
        gap: 10px;
        font-size: 0.9rem;
        color: #e2e8f0;
      `;

      const icon = document.createElement("i");
      icon.className =
        "fas " +
        (n.type === "success"
          ? "fa-check-circle"
          : "fa-exclamation-triangle");
      icon.style.color = n.type === "success" ? "#22c55e" : "#facc15";

      li.appendChild(icon);
      li.appendChild(document.createTextNode(n.message));
      notifList.appendChild(li);
    });

    if (data.length > 0) {
      notifBadge.style.display = "block";
    }
  }

  notifBtn.addEventListener("click", () => {
    const isOpen = notifDropdown.style.display === "block";
    notifDropdown.style.display = isOpen ? "none" : "block";
    if (!isOpen) notifBadge.style.display = "none";
  });

  document.addEventListener("click", function (e) {
    if (
      !notifBtn.contains(e.target) &&
      !notifDropdown.contains(e.target)
    ) {
      notifDropdown.style.display = "none";
    }
  });

  onAuthStateChanged(auth, async (user) => {
    if (!user) {
      alert("Please log in to access your profile.");
      return;
    }

    currentUID = user.uid;
    document.getElementById("email").value = user.email || "";

    // Load profile
    const userDoc = await getDoc(doc(db, "users", currentUID));
    if (userDoc.exists()) {
      const data = userDoc.data();
      document.getElementById("firstName").value = data.firstName || "";
      document.getElementById("lastName").value = data.lastName || "";
      document.getElementById("phone").value = data.phone || "";
      document.getElementById("zip").value = data.zip || "";
      updateProfileProgress(data);
      document.getElementById("country").value = data.country || "";
      document.getElementById("gender").value = data.gender || "";

      if (data.kycUrl) {
        document.getElementById("uploadStatus").innerHTML =
          `KYC uploaded: <a href="${data.kycUrl}" target="_blank">View Document</a>`;
      }

      toggleKYCInputs(data.kycStatus);
    }

    // Live Notifications for current user
    const notifRef = collection(db, "notifications");
    const notifQuery = query(
      notifRef,
      where("uid", "==", currentUID),
      orderBy("timestamp", "desc")
    );

    onSnapshot(notifQuery, (snapshot) => {
      renderNotifications(snapshot.docs);
    });
  });

  async function uploadKYCFile(file) {
  const formData = new FormData();
  formData.append("file", file);
  formData.append("upload_preset", "kwstore");

  const statusEl = document.getElementById("uploadStatus");
  statusEl.textContent = "Uploading...";

  try {
    const res = await fetch(`https://api.cloudinary.com/v1_1/dy65t4t1x/upload`, {
      method: "POST",
      body: formData
    });
    const data = await res.json();

    if (data.secure_url) {
      statusEl.innerHTML = `Uploaded: <a href="${data.secure_url}" target="_blank">View</a>`;
      return data.secure_url;
    } else {
      statusEl.textContent = "Upload failed.";
      return null;
    }
  } catch (err) {
    statusEl.textContent = "Upload error.";
    return null;
  }
}

window.saveProfile = async function () {
  if (!currentUID) return alert("You must be logged in.");

  const data = {
    firstName: document.getElementById("firstName").value.trim(),
    lastName: document.getElementById("lastName").value.trim(),
    phone: document.getElementById("phone").value.trim(),
    zip: document.getElementById("zip").value.trim(),
    country: document.getElementById("country").value.trim(),
    gender: document.getElementById("gender").value.trim()
  };

  const fileInput = document.getElementById("kycFile");
  if (fileInput.files.length > 0) {
    const uploadedUrl = await uploadKYCFile(fileInput.files[0]);
    if (uploadedUrl) {
      data.kycUrl = uploadedUrl;
      data.kycStatus = "Pending";
    } else {
      return alert("KYC upload failed.");
    }
  }

  try {
    await setDoc(doc(db, "users", currentUID), data, { merge: true });
    showToast("Saved successfully!");

    // ✅ Update profile progress bar after saving
    updateProfileProgress(data);

    // 🔔 Optional: Add notification
    const notifRef = doc(collection(db, "notifications"));
    await setDoc(notifRef, {
      uid: currentUID,
      message: "Profile updated successfully.",
      type: "success",
      timestamp: new Date()
    });

    toggleKYCInputs(data.kycStatus || null);
  } catch (err) {
    alert("Failed to save profile: " + err.message);
  }
};

  function toggleKYCInputs(status) {
    const section = document.getElementById("kycSection");
    const display = document.getElementById("kycStatusDisplay");

    let color = "#facc15";

    if (status === "Approved") {
      color = "#22c55e";
      section.style.display = "none";
    } else if (status === "Rejected") {
      color = "#ef4444";
      section.style.display = "block";
    } else if (status === "Pending") {
      color = "#facc15";
      section.style.display = "none";
    } else {
      section.style.display = "block";
    }

    if (status) {
      display.innerHTML = `KYC Status: <strong style="color: ${color};">${status}</strong>`;
    } else {
      display.innerHTML = "";
    }
  }
</script>
<!-- 👇 Place this at the very end before </body> -->
<script>
  function updateProfileProgress(data) {
    const requiredFields = [
      "firstName",
      "lastName",
      "phone",
      "zip",
      "country",
      "gender",
      "kycUrl"
    ];

    let filledCount = 0;

    requiredFields.forEach((field) => {
      if (data[field] && data[field].toString().trim() !== "") filledCount++;
    });

    const percent = Math.round((filledCount / requiredFields.length) * 100);

    const textEl = document.getElementById("completionText");
    const barEl = document.getElementById("completionBar");

    if (textEl && barEl) {
      textEl.textContent = `${percent}%`;
      barEl.style.width = `${percent}%`;

      if (percent < 50) {
        barEl.style.backgroundColor = "#facc15"; // Yellow
      } else if (percent < 90) {
        barEl.style.backgroundColor = "#3b82f6"; // Blue
      } else {
        barEl.style.backgroundColor = "#22c55e"; // Green
      }
    }
  }
</script>
</body>
</html>