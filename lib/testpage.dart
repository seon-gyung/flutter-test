import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  FirebaseFirestore fireStore = FirebaseFirestore.instance;

  var name = "뭐지";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("테스트 페이지"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(name),
              ElevatedButton(onPressed: () {

              }, child: Text("데이터 불러오기"))
            ],
          ),
        ),
      ),
    );
  }
}
