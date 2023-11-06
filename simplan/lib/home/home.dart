import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Simplan"),
        actions: [Icon(Icons.settings)],
      ),
      body: Center(
        child: SizedBox(
            width: screenSize.width * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                      "그대들은 어떻게 살 것인가, 그대들은 어떻게 살 것인가, 그대들은 어떻게 살 것인가, 그대들은 어떻게 살 것인가, 그대들은 어떻게 살 것인가, "),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: SizedBox(
                        height: screenSize.height * 0.4,
                        width: screenSize.width * 0.45,
                        child: Column(
                          children: [
                            Container(
                              height: 48,
                              width: screenSize.width * 0.45,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: screenSize.width * 0.45,
                              height: screenSize.height * 0.3,
                              child: ListView(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    color: Colors.green,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        height: screenSize.height * 0.4,
                        width: screenSize.width * 0.45,
                        child: Column(
                          children: [
                            Container(
                              height: 48,
                              width: screenSize.width * 0.45,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
