import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:simplan/home/home.dart';
import 'package:get/get.dart';

void main() async {
  await GetStorage.init();
  runApp(const Simplan());
}

class Simplan extends StatelessWidget {
  const Simplan({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false, // 디버그창 띠 지우기
      home: Home(),
    );
  }
}
