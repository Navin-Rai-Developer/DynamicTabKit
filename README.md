![iOS CI](https://github.com/Navin-Rai-Developer/DynamicTabKit/actions/workflows/main.yml/badge.svg)
# DynamicTabKit

A production-ready SwiftUI project demonstrating a fully dynamic, user-customizable Tab Bar architecture.  

Users start with 3 default tabs and can add, remove, or reorder tabs anytime from the Settings screen — powered by a centralized state manager built with ObservableObject.

---

## ✨ Features

- ✅ 3 default tabs on first launch (Home, Profile, Settings)
- ✅ Add or remove tabs dynamically from Settings
- ✅ Core tabs (Home, Profile, Settings) are protected — cannot be removed
- ✅ Tab selection resets safely when the active tab is removed
- ✅ SF Symbols support for every tab item
- ✅ Centralized state via `TabBarManager` (No `@Binding` prop drilling)
- ✅ Full SwiftUI Previews on all views
- ✅ Clean MVVM-style architecture
- ✅ CI-enabled with GitHub Actions

---

## 🏗 Architecture

**Pattern:** MVVM  
**State Management:** ObservableObject-based TabStore  
**UI Framework:** SwiftUI  

Project Structure:
DynamicTabKit/
├── Model/
├── View/
│   ├── Setting/
│   └── Tab/
├── ViewModel/
└── DynamicTabKitApp.swift
---

## 🚀 Setup & Installation

### Requirements

| Tool | Version |
|------|----------|
| Xcode | 15.0+ |
| iOS Deployment Target | 17.0+ |
| Swift | 5.9+ |
| macOS (Development) | Ventura 13.0+ |

### Run Locally

1. Clone the repository
2. Open `DynamicTabKit.xcodeproj`
3. Select the `DynamicTabKit` scheme
4. Run on iOS Simulator

---

## 🧠 Engineering Highlights

- Safe state reset handling
- Clean separation of concerns
- Extensible tab architecture
- Production-ready folder structure
- No prop-drilling anti-pattern
- CI pipeline enabled

---

## 📦 CI Status

GitHub Actions automatically builds the project on every push to `main`.

---

## 🙋‍♂️ Author

**Navin Rai**  
Senior iOS Developer  

- GitHub: [@Navin-Rai-Developer](https://github.com/Navin-Rai-Developer)
- LinkedIn: https://www.linkedin.com/in/navinkumarrai

---

⭐ If you find this useful, consider starring the repository.
