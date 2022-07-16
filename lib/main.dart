import 'package:flutter/material.dart';
import 'package:todo/themes/app.theme.dart';
import 'package:todo/views/login.view.dart';

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
      home: LoginView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
