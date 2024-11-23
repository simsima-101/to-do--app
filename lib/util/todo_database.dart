import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // Method to load data from Hive
  void loadData() {
    var box = Hive.box('mybox');
    toDoList = box.get("TODOLIST", defaultValue: []);
  }

  // Method to create initial data
  void createInitialData() {
    toDoList = [
      ["Sample Task", false],
    ];
  }

  // Method to update the Hive database
  void updateDataBase() {
    var box = Hive.box('mybox');
    box.put("TODOLIST", toDoList);
  }
}
