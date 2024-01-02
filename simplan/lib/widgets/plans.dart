import 'package:flutter/material.dart';

class Plans extends StatelessWidget {
  const Plans({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenSize.height * 0.3,
      width: screenSize.width * 0.8,
      child: ListView(
        children: [
          Padding(
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
                    // color: Colors.green,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "운동하기",
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
          ),
        ],
      ),
    );
  }
}
