import 'package:flutter/material.dart';
import 'package:simplan/widgets/now_widget.dart';
import 'package:simplan/widgets/add_button.dart';
import 'package:simplan/widgets/plans.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Simplan."),
            NowWidget(screenSize: screenSize),
          ],
        ),
        backgroundColor: Color(0xFFD1E9FF),
      ),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SizedBox(
            width: screenSize.width * 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // NowWidget(screenSize: screenSize),
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
