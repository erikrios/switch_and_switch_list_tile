import 'package:flutter/material.dart';
import 'package:switch_and_switch_list_tile/SwitchHomePage.dart';
import 'package:switch_and_switch_list_tile/SwitchListTileHomePage.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Demo Flutter',
        theme: ThemeData(primarySwatch: Colors.cyan),
        home: SwitchListTileHomePage(),
      );
}
