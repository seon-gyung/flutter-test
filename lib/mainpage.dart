import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      label: '1번',
      icon: Icon(Icons.favorite),
    ),
    BottomNavigationBarItem(
      label: '2번',
      icon: Icon(Icons.favorite),
    ),
    BottomNavigationBarItem(
      label: '3번',
      icon: Icon(Icons.favorite),
    ),
    BottomNavigationBarItem(
      label: '4번',
      icon: Icon(Icons.favorite),
    ),
  ];

  List pages=[
    Container(
      child: Center(child: Text("1번입니다")),
    ),
    Container(
      child: Center(child: Text("2번입니다")),
    ),
    Container(
      child: Center(child: Text("3번입니다")),
    ),
    Container(
      child: Center(child: Text("4번입니다")),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('메인페이지'),
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
