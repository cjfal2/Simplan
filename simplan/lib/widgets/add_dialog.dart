import 'package:flutter/material.dart';

Future addDialog(context) async {
  String inputText = '';
  TextEditingController textController = TextEditingController();
  return showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text(
          '일정 추가',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: Column(
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
                  controller: textController,
                  //  onSubmitted: sendMsg,  //키보드로 엔터 클릭 시 호출
                  onChanged: (text) {
                    inputText = text;
                  }, //text 가 입력될 때 마다 호출
                  decoration: InputDecoration(
                    // labelText: '텍스트 입력',
                    hintText: '제목을 입력해주세요',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff3ED598)),
                        borderRadius: BorderRadius.circular(14)), //외곽선
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black26),
                        borderRadius: BorderRadius.circular(14)), //외곽선
                  ),
                ))
          ],
        )),
  );
}
