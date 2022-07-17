import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(
        top: 40,
      ),
      children: <Widget>[
        const ListTile(
          title: Text(
            "Ir ao Supermercado",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          subtitle: Text("17/07/2022"),
        ),
        ListTile(
          title: Text(
            "Ir a Academia",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black.withOpacity(0.2),
            ),
          ),
          subtitle: const Text("17/07/2022"),
        ),
      ],
    );
  }
}
