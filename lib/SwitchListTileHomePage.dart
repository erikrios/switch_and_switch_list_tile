import 'package:flutter/material.dart';

class SwitchListTileHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SwitchListTileHomePageState();
}

class _SwitchListTileHomePageState extends State<SwitchListTileHomePage> {

  final List<String> settings = ['Airplane mode', 'WLAN', 'Mobile Data', 'Bluetooth'];
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

  void onSwitchFourChange(bool value) {
    setState(() {
      this.settingValues[3] = value;
    });
    print(settingValues);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Demo Switch List Tile'),
    ),
    body: Container(
      child: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          SwitchListTile(
            value: this.settingValues[0],
            onChanged: (bool value) { onSwitchOneChanged(value); },
            title: Text(this.settings[0]),
            secondary: Icon(Icons.airplanemode_active),
          ),
          Divider(),
          SwitchListTile(
            value: this.settingValues[1],
            onChanged: (bool value) { onSwitchTwoChanged(value); },
            title: Text(this.settings[1]),
            secondary: Icon(Icons.wifi),
          ),
          Divider(),
          SwitchListTile(
            value: this.settingValues[2],
            onChanged: (bool value) { onSwitchThreeChanged(value); },
            title: Text(this.settings[2]),
            secondary: Icon(Icons.data_usage),
          ),
          Divider(),
          SwitchListTile(
            value: this.settingValues[2],
            onChanged: (bool value) { onSwitchFourChange(value); },
            title: Text(this.settings[3]),
            secondary: Icon(Icons.bluetooth),
          )
        ],
      ),
    ),
  );
}