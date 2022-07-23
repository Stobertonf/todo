import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/stores/app.store.dart';
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
    return MultiProvider(
      providers: [
        Provider<AppStore>.value(
          value: AppStore(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todos',
        theme: appTheme(),
        home: LoginView(),
      ),
    );
  }
}
