import 'package:app_test1/testpages/second.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: FirstWidget(),
    );
  }
}

class FirstWidget extends StatelessWidget {
  const FirstWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "선경앱",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Row(children: [
        GestureDetector(
          onTap: (){
            Get.to(second());
          },
          child: Container(
            child: Text(
              "다른 페이지 가기",
              style: TextStyle(fontSize: 30),
            ),
            color: Colors.cyanAccent,
          ),
        ),
      ]),
    );
  }
}
