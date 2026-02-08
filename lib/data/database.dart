import 'package:hive/hive.dart';

class ToDoDatabase {
  List toDoList = [];

  // reference the box
  final _myBox = Hive.box('mybox');

  // firsttime
  void createMyInitialdata() {
    toDoList = [
      ["make some task", false],
      ["turu ", false],
    ];

    updateDatabase();
  }

  // load data
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database

  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
