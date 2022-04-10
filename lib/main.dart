import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'settingTab.dart';

void main() {
  runApp(KNOU_Notice());
}

class KNOU_Notice extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: MainWidget(),
    );
  }
}

class MainWidget extends StatelessWidget {
  List<BottomNavigationBarItem> items = [
    //   BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text("홈")),
    //   BottomNavigationBarItem(icon: Icon(CupertinoIcons.alarm), title: Text("알림")),
    //   BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings), title: Text("설정")),
    const BottomNavigationBarItem(icon: Icon(CupertinoIcons.bell)),
    const BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
    const BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings)),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: items), // TODO: 앱 켰을시 default 값 홈으로 수정
        tabBuilder: (context, idx) {
          switch (idx) {
            case 0:
              return AlarmTab();
            case 1:
              return HomeTab();
            default:
              return SettingTab();
          }
        });
  }
}

class AlarmTab extends StatelessWidget {
  // TODO: 별도 파일로 빼서 관리해야 함
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("alarm!"));
  }
}

class HomeTab extends StatelessWidget {
  // TODO: 별도 파일로 빼서 관리해야 함
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        title: '알리미',
        home: Scaffold(
          // appBar: AppBar(title: const Text('알려')),
          body: Container(
            height: 50,
            color: Colors.blue,
            padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: EdgeInsets.only(right: 1),
                      child: Text(
                        '방통대 알리미',
                        style: TextStyle(fontSize: 14),
                      )),
                  Container(
                      padding: EdgeInsets.only(right: 1),
                      child: Text(
                        '무언가',
                        style: TextStyle(fontSize: 14),
                      )),
                  Container(
                      padding: EdgeInsets.only(right: 1),
                      child: Text(
                        '메뉴',
                        style: TextStyle(fontSize: 14),
                      )),
                ]),
          ),
        ));
  }
}
