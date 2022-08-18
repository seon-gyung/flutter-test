import 'package:app_test1/mainpages/homescreen.dart';
import 'package:app_test1/testpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      label: '홈',
      icon: Icon(Icons.home_filled),
    ),
    BottomNavigationBarItem(
      label: '더보기',
      icon: Icon(Icons.linear_scale),
    ),
  ];

  List pages = [
    HomeScreen(),
    Container(
      child: Center(child: Text("2번")),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            Get.to(TestPage());
          },
          child: Text('메인페이지'),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white, // bar의 배경색
        selectedItemColor: Colors.black, // 선택된 아이템 색상
        unselectedItemColor: Colors.grey.withOpacity(.60), // 선택 안 된 아이템 색상
        selectedFontSize: 14, // 선택된 아이템 폰트 크기
        unselectedFontSize: 10, // 선택 안 된 아이템 폰트 크기
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: bottomItems,
      ),
      body: pages[_selectedIndex],
    );
  }
}
