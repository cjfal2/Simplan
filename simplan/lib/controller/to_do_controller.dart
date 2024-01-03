import 'package:get/get.dart';

class ToDoController extends GetxController {
  var toDoList = [
    ["운동하기", '다리 조지기']
  ].obs;

  void addTask(List<String> tasks) {
    toDoList.add(tasks);
    update(); // 변경사항을 화면에 갱신
  }

  void editTask(int index, List<String> updatedTasks) {
    if (index >= 0 && index < toDoList.length) {
      toDoList[index] = updatedTasks;
      update(); // 변경사항을 화면에 갱신
    }
  }

  void deleteTask(int index) {
    if (index >= 0 && index < toDoList.length) {
      toDoList.removeAt(index);
      update(); // 변경사항을 화면에 갱신
    }
  }

  void deleteAllTasks() {
    toDoList.clear();
    update(); // 변경사항을 화면에 갱신
  }
}
