import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:simplan/controller/to_do_controller.dart';

class Plans extends StatefulWidget {
  const Plans({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  State<Plans> createState() => _PlansState();
}

class _PlansState extends State<Plans> {
  @override
  Widget build(BuildContext context) {
    final toDoController = Get.put(ToDoController());
    final box = GetStorage(); // GetStorage 인스턴스 생성
    bool temp = true;
    return SizedBox(
      height: widget.screenSize.height * 0.8,
      width: widget.screenSize.width * 0.8,
      child: Obx(() => ListView.builder(
            itemCount: toDoController.toDoList.length,
            itemBuilder: (context, index) {
              List<String> tasks = toDoController.toDoList[index];

              if (tasks.length > 2) {
                // tasks 리스트에 3개 이상의 요소가 있는지 확인
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          toDoController.updateTaskStatus(index);
                          final List<dynamic> currentToDoList =
                              toDoController.toDoList.toList();
                          box.write('tasks', currentToDoList);

                          setState(() {
                            // super.setState();
                            temp = !temp;
                          });
                        },
                        child: Icon(
                          tasks[2] == 'F'
                              ? Icons.check_box_outlined
                              : Icons.check_box_outline_blank,
                          size: 28,
                          color: tasks[2] == 'F' ? Colors.red : null,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Container(
                          width: widget.screenSize.width * 0.65,
                          height: 40,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            tasks[0],
                            style: TextStyle(
                              fontSize: 18,
                              decoration: tasks[2] == 'F'
                                  ? TextDecoration.lineThrough
                                  : null,
                              color: tasks[2] == 'F' ? Colors.red : null,
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search_rounded,
                        size: 28,
                      ),
                    ],
                  ),
                );
              } else {
                return Container(); // 3개 미만의 요소가 있을 경우 빈 컨테이너 반환
              }
            },
          )),
    );
  }
}
