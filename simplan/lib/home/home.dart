import 'package:flutter/material.dart';
import 'package:simplan/dialogs/delete_all_dialog.dart';
import 'package:simplan/widgets/now_widget.dart';
import 'package:simplan/widgets/add_button.dart';
import 'package:simplan/widgets/plans.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

//
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    bool temp = true;
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
                Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: AddButton(screenSize: screenSize),
                          ),
                          InkWell(
                            onTap: () async {
                              deleteAllDialog(context);
                              setState(() {
                                temp = !temp;
                              });
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Icon(
                                Icons.delete_forever_outlined,
                                size: 40,
                              ),
                            ),
                          )
                        ],
                      ),
                      Plans(screenSize: screenSize),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
