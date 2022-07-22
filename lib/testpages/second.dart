import 'package:flutter/material.dart';

class second extends StatelessWidget {
  const second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("두번째페이지"),
      ),
      body: Container(
        child: Text("두번째페이지 내용"),
      ),
    );
  }
}
