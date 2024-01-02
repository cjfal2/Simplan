import 'package:flutter/material.dart';
import 'package:simplan/widgets/add_dialog.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        addDialog(context);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        height: 30,
        width: screenSize.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.blueGrey,
        ),
        child: Icon(Icons.add),
      ),
    );
  }
}
