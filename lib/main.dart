import 'package:flutter/material.dart';
import 'package:todo/themes/app.theme.dart';
import 'package:todo/views/login.view.dart';
import 'package:todo/widgets/navbar.widget.dart';
import 'package:todo/views/create-todo.view.dart';
import 'package:todo/widgets/user-card.widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const <Widget>[
          UserCard(),
          NavBar(),
          CreateTodoView(),
        ],
      ),
    );
  }
}
