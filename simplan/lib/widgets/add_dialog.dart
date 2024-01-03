import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simplan/controller/to_do_controller.dart';
import 'package:get_storage/get_storage.dart';

Future addDialog(context) async {
  String titleText = '';
  String contentText = '';
  final box = GetStorage(); // GetStorage 인스턴스 생성
  final ToDoController toDoController = Get.find();
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) => GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: AlertDialog(
        backgroundColor: Color(0xFFD1E9FF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text(
          '일정 추가',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "제목",
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                  height: 70,
                  child: TextField(
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.left,
                    textAlignVertical: TextAlignVertical.center,
                    maxLines: 1,
                    maxLength: 12,
                    controller: titleController,
                    //  onSubmitted: sendMsg,  //키보드로 엔터 클릭 시 호출
                    onChanged: (text) {
                      titleText = text;
                    }, //text 가 입력될 때 마다 호출
                    decoration: InputDecoration(
                      // labelText: '텍스트 입력',
                      hintText: '제목을 입력해주세요',
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 243, 151)),
                          borderRadius: BorderRadius.circular(14)), //외곽선
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromARGB(66, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(14)), //외곽선
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "상세내용",
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
              ),
              TextField(
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.left,
                maxLength: 100,
                maxLines: 5,
                controller: contentController,
                //  onSubmitted: sendMsg,  //키보드로 엔터 클릭 시 호출
                onChanged: (text) {
                  contentText = text;
                }, //text 가 입력될 때 마다 호출
                decoration: InputDecoration(
                  hintText: '상세 내용을 입력해주세요',
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 255, 243, 151)),
                      borderRadius: BorderRadius.circular(14)), //외곽선
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: const Color.fromARGB(66, 255, 255, 255)),
                      borderRadius: BorderRadius.circular(14)), //외곽선
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => {Get.back()},
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFD2D2D2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "취소",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // GetX의 ToDoController에 새로운 항목 추가
                        toDoController.addTask(titleText, contentText);

                        final List<List<String>> currentToDoList =
                            toDoController.toDoList.toList();
                        box.write('tasks', currentToDoList);
                        Get.back(); // 다이얼로그 닫기
                      },
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFF9EDF7F),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "등록",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
