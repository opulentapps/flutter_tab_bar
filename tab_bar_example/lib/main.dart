import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tab_bar_example/navigation_bar.dart';
import 'package:tab_bar_example/routes.dart';

void main() async {
  runApp(new FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Splash and Token Authentication",
      routes: <String, WidgetBuilder>{
        homeScreen: (BuildContext context) => MainNavigationBar(),
      },
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        accentColor: Colors.redAccent,
      ),
      home: MainNavigationBar(),
    );
  }
}
