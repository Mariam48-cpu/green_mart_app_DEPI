# 🛒 Green Mart — Grocery & Organic Delivery Mobile App

<p align="center">
  <img src="screenshots/banner.png" alt="Green Mart Banner" width="100%">
</p>

<p align="center">
  <a href="https://flutter.dev"><img src="https://img.shields.io/badge/Flutter-3.x-02569B?style=for-the-badge&logo=flutter" alt="Flutter"></a>
  <a href="https://dart.dev"><img src="https://img.shields.io/badge/Dart-3.x-0175C2?style=for-the-badge&logo=dart" alt="Dart"></a>
  <a href="https://www.figma.com/design/IZVjhYZ4TqXRsm4uUXugdV/GreenMart?node-id=1-1300"><img src="https://img.shields.io/badge/Figma-Design_System-F24E1E?style=for-the-badge&logo=figma" alt="Figma"></a>
  <img src="https://img.shields.io/badge/DEPI-Initiative-107C41?style=for-the-badge" alt="DEPI">
</p>

---

## 📖 About The Project

**Green Mart** is a modern, responsive cross-platform mobile application designed and developed for seamless grocery shopping and organic food delivery. Built with **Flutter**, the app turns high-fidelity UI/UX concepts into a scalable, high-performance user experience.

> 🎨 **Figma Prototype & Design:** [Explore Figma Design File](https://www.figma.com/design/IZVjhYZ4TqXRsm4uUXugdV/GreenMart?node-id=1-1300&t=j62LovNqxnWRMWv9-0)

---

## 📱 Screenshots & UI Showroom

Create a folder named `screenshots` inside your repo and place your exported screen images there:

| 1. Onboarding & Splash | 2. Authentication | 3. Home & Explore |
| :---: | :---: | :---: |
| <img src="screenshots/onboarding.png" width="220"/> | <img src="screenshots/login.png" width="220"/> | <img src="screenshots/home.png" width="220"/> |

| 4. Product Details | 5. Cart & Order | 6. Checkout & Profile |
| :---: | :---: | :---: |
| <img src="screenshots/product_details.png" width="220"/> | <img src="screenshots/cart.png" width="220"/> | <img src="screenshots/profile.png" width="220"/> |

---

## ✨ Key Features

- **Intuitive UI/UX Flow:** Pixel-perfect implementation based on the GreenMart Figma design system.
- **Onboarding Experience:** Clean introductory slides for smooth first-time user engagement.
- **Authentication & Authorization:** Secure user sign-up, sign-in, and session handling.
- **Dynamic Catalog & Search:** Categorized goods (Fresh Vegetables, Fruits, Dairy, Bakery) with instant filtering.
- **Cart & Order Workflow:** Quantity counters, dynamic subtotal calculations, and checkout validation.
- **Order Tracking & Profile:** Comprehensive account management and past order history.

---

## 🛠️ Architecture & Tech Stack

- **Framework:** [Flutter](https://flutter.dev) (Dart)
- **Architecture:** Feature-first / Clean Architecture with strict separation of presentation, domain, and data layers.
- **State Management:** BLoC / Cubit pattern
- **Design & Assets:** [Figma Design System](https://www.figma.com/design/IZVjhYZ4TqXRsm4uUXugdV/GreenMart?node-id=1-1300&t=j62LovNqxnWRMWv9-0), Flutter SVG, Google Fonts

---

## 📂 Project Structure

```text
lib/
├── core/
│   ├── constants/       # App assets, colors, and string constants
│   ├── theme/           # Light & dark theme palettes
│   └── utils/           # Helper functions & validation logic
├── features/
│   ├── auth/            # Sign in, Sign up, OTP verification
│   ├── home/            # Dashboard, banners, product cards
│   ├── product/         # Product view, ratings, specifications
│   ├── cart/            # Bag items, pricing breakdown
│   └── profile/         # User information & settings
└── main.dart
