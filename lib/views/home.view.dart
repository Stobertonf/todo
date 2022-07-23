import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/stores/app.store.dart';
import 'package:todo/widgets/navbar.widget.dart';
import 'package:todo/widgets/todo-list.widget.dart';
import 'package:todo/widgets/user-card.widget.dart';
import 'package:todo/controllers/todo.controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AppStore>(context);
    final controller = new TodoController(store);

    // Só ocorre na primeira vez que o App rodar
    if (store.currentState == "none") {
      controller.changeSelection("today");
    }

    return Scaffold(
      body: Column(
        children: <Widget>[
          UserCard(),
          NavBar(),
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
