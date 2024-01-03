import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simplan/controller/to_do_controller.dart';

class Plans extends StatelessWidget {
  const Plans({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    final toDoController = Get.put(ToDoController());

    return SizedBox(
      height: screenSize.height * 0.3,
      width: screenSize.width * 0.8,
      child: Obx(() => ListView.builder(
            itemCount: toDoController.toDoList.length,
            itemBuilder: (context, index) {
              List<String> tasks = toDoController.toDoList[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  children: [
                    Icon(
                      Icons.check_box_outline_blank,
                      size: 28,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Container(
                        width: screenSize.width * 0.65,
                        height: 40,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          tasks[0],
                          style: TextStyle(fontSize: 18),
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
            },
          )),
    );
  }
}
