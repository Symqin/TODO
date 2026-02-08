TODO APP (FLUTTER)

A simple and clean Todo List application built with Flutter.
This app allows users to create, complete, and delete tasks
with local persistence using Hive.


FEATURES
- Add new tasks
- Mark tasks as completed
- Delete tasks (swipe to delete)
- Local storage using Hive
- Dark theme UI
- Android APK ready to install


TECH STACK

- Flutter
- Dart
- Hive (Local NoSQL Database)
- flutter_slidable


PROJECT STRUCTURE

lib/
  data/
    database.dart
  pages/
    home_page.dart
  utils/
    dialog_box.dart
    my_button.dart
    todo_tile.dart
  main.dart


GETTING STARTED

1. Install dependencies
   flutter pub get

2. Run the app (debug)
   flutter run


BUILD APK 
flutter build apk --release

APK output:
build/app/outputs/flutter-apk/app-release.apk


LOCAL STORAGE (HIVE)

Hive box name : mybox
Data key     : TODOLIST
Data persists after app restart

APP ICON

Generated using flutter_launcher_icons

Command:
flutter pub run flutter_launcher_icons

NOTES
========================================
- For learning and demo purposes
- Enable "Install unknown apps" to install APK
- Not published on Play Store

========================================
AUTHOR
========================================
Created by Qin
Built with Flutter
