# 📝 Flutter Todo App

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Android](https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white)

A simple and clean **Todo List** application built with **Flutter**. This app allows users to create, complete, and delete tasks with reliable local persistence using **Hive**.

---

## 🚀 Features

* **Task Management**: Easily add new tasks and mark them as completed.
* **Swipe to Delete**: Integrated `flutter_slidable` for intuitive task removal.
* **Local Storage**: Data persists even after the app is closed, thanks to **Hive NoSQL**.
* **Dark Theme UI**: Clean and modern interface designed for comfort.
* **Release Ready**: Configured for Android APK builds.

---

## 🛠 Tech Stack

| Tool | Purpose |
| :--- | :--- |
| **Flutter** | UI Framework |
| **Dart** | Programming Language |
| **Hive** | Lightweight & Fast NoSQL Database |
| **flutter_slidable** | Interactive swipe-to-action list items |

---

## 📂 Project Structure

```text
lib/
├── data/
│   └── database.dart      # Hive database logic & storage
├── pages/
│   └── home_page.dart     # Main UI Screen
├── utils/
│   ├── dialog_box.dart    # Custom Alert Dialog for adding tasks
│   ├── my_button.dart     # Reusable Button Component
│   └── todo_tile.dart     # Individual Task Tile Component
└── main.dart              # Entry point & App Theme
