import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ToDoController extends GetxController {
  var toDoList = [].obs;
  @override
  void onInit() {
    final box = GetStorage();
    final List<List<String>> savedTasks =
        (box.read<List<dynamic>>('tasks') ?? []).map((task) {
      return List<String>.from(task);
    }).toList();

    toDoList.assignAll(savedTasks);

    super.onInit();
  }

  void addTask(String title, String content) {
    toDoList.add([title, content, "T"]);
    update();
  }

  void updateTaskStatus(int index) {
    if (index >= 0 && index < toDoList.length) {
      // 'T'를 'F'로, 'F'를 'T'로 변경
      toDoList[index][2] = toDoList[index][2] == 'T' ? 'F' : 'T';

      update(); // 변경사항을 화면에 갱신
    }
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
