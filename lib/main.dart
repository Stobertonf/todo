import 'package:flutter/material.dart';
import 'package:todo/components/avatar.widget.dart';
import 'package:todo/themes/app.theme.dart';
import 'package:todo/components/button.widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todos',
      theme: appTheme(),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 40,
          ),
          TDButton(
            width: 300,
            text: "Text",
            callback: () {},
            image: "assets/images/google.png",
          ),
          const SizedBox(
            height: 40,
          ),
          TDAvatar(
            width: 120,
            path: "https//placehold.it/200",
          ),
        ],
      ),
    );
  }
}
