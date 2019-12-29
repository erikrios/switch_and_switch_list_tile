import 'package:flutter/material.dart';

class SwitchHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SwitchHomePageState();
}

class _SwitchHomePageState extends State<SwitchHomePage> {
  final List<String> settings = [
    'Airplane mode',
    'WLAN',
    'Mobile Data',
    'Bluetooth'
  ];
  List<bool> settingValues = [false, false, false, false];

  void onSwitchOneChanged(bool value) {
    setState(() {
      this.settingValues[0] = value;
    });
    print(settingValues);
  }

  void onSwitchTwoChanged(bool value) {
    setState(() {
      this.settingValues[1] = value;
    });
    print(settingValues);
  }

  void onSwitchThreeChanged(bool value) {
    setState(() {
      this.settingValues[2] = value;
    });
    print(settingValues);
  }

  void onSwitchFourChanged(bool value) {
    setState(() {
      this.settingValues[3] = value;
    });
    print(settingValues);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Demo Switch'),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Switch(
                    value: this.settingValues[0],
                    onChanged: (bool value) {
                      onSwitchOneChanged(value);
                    },
                  ),
                  Container(
                    width: 8.0,
                  ),
                  Text(this.settings[0])
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Switch(
                    value: this.settingValues[1],
                    onChanged: (bool value) {
                      onSwitchTwoChanged(value);
                    },
                  ),
                  Container(
                    width: 8.0,
                  ),
                  Text(this.settings[1])
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Switch(
                    value: this.settingValues[2],
                    onChanged: (bool value) {
                      onSwitchThreeChanged(value);
                    },
                  ),
                  Container(
                    width: 8.0,
                  ),
                  Text(this.settings[2])
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Switch(
                    value: this.settingValues[3],
                    onChanged: (bool value) {
                      onSwitchFourChanged(value);
                    },
                  ),
                  Container(
                    width: 8.0,
                  ),
                  Text(this.settings[3])
                ],
              )
            ],
          ),
        ),
      );
}
