import 'package:flutter/material.dart';
import 'package:simplan/widgets/now_widget.dart';
import 'package:simplan/widgets/add_button.dart';
import 'package:simplan/widgets/plans.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Simplan. 2024"),
        // actions: [Icon(Icons.settings)],
      ),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SizedBox(
            width: screenSize.width * 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                NowWidget(screenSize: screenSize),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 32,
                        width: screenSize.width * 0.45,
                        child: Text(
                          "TO DO",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      AddButton(screenSize: screenSize),
                      Plans(screenSize: screenSize),
                      SizedBox(
                        height: 32,
                        width: screenSize.width * 0.45,
                        child: Text(
                          "DONE",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
