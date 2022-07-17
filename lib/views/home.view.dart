import 'package:flutter/material.dart';
import 'package:todo/widgets/navbar.widget.dart';
import 'package:todo/widgets/todo-list.widget.dart';
import 'package:todo/widgets/user-card.widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const UserCard(),
          const NavBar(),
          Expanded(
            child: Container(
              child: const TodoList(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
