import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NowWidget extends StatelessWidget {
  const NowWidget({super.key, required this.screenSize});
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('yy.MM.dd').format(DateTime.now());
    String weekday = DateFormat('EEEE').format(DateTime.now());
    String today = "";
    if (weekday == "Sunday") {
      today = "일요일";
    } else if (weekday == "Monday") {
      today = "월요일";
    } else if (weekday == "Tuesday") {
      today = "화요일";
    } else if (weekday == "Wednesday") {
      today = "수요일";
    } else if (weekday == "Thursday") {
      today = "목요일";
    } else if (weekday == "Friday") {
      today = "금요일";
    } else if (weekday == "Saturday") {
      today = "토요일";
    }
    return Row(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          formattedDate,
          style: TextStyle(fontSize: 18),
        ),
      ),
      Text(
        today,
        style: TextStyle(fontSize: 18),
      ),
    ]);
  }
}
