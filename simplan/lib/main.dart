import 'package:flutter/material.dart';
import 'package:simplan/home/home.dart';

void main() {
  runApp(const Simplan());
}

class Simplan extends StatelessWidget {
  const Simplan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false, // 디버그창 띠 지우기
      home: Home(),
    );
  }
}
