import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingTab extends StatefulWidget {
  @override
  SettingTabState createState() => SettingTabState();
}

class SettingTabState extends State<SettingTab> {
  bool _alertOn = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        title: '설정',
        home: Scaffold(
            appBar: const CupertinoNavigationBar(
              middle: Text('설정'),
            ),
            body: Center(
                child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("알림켜기"),
                    Checkbox(
                      value: _alertOn,
                      onChanged: (value) {
                        setState(() {
                          _alertOn = value!;
                        });
                      },
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("알림켜기2"),
                    CupertinoSwitch(
                      value: _alertOn,
                      onChanged: (value) {
                        setState(() {
                          _alertOn = value;
                        });
                      },
                    ),
                  ],
                )
              ],
            ))));
  }
}
