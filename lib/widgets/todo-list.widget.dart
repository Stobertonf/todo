import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/stores/app.store.dart';
import 'package:todo/widgets/busy.widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo/controllers/todo.controller.dart';

class TodoList extends StatelessWidget {
  final _dateFormat = new DateFormat('dd/MM/yyyy');

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AppStore>(context);
    final controller = new TodoController(store);

    return Observer(
      builder: (_) => TDBusy(
        busy: store.busy,
        child: store.todos.length == 0
            ? const Center(
                child: Text("Nenhuma tarefa encontrada!"),
              )
            : ListView.builder(
                padding: const EdgeInsets.only(
                  left: 40,
                ),
                itemCount: store.todos.length,
                itemBuilder: (context, index) {
                  var todo = store.todos[index];

                  return ListTile(
                    title: Text(
                      todo.title,
                      style: TextStyle(
                        fontSize: 18,
                        color: todo.done
                            ? Colors.black.withOpacity(0.2)
                            : Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      _dateFormat.format(todo.date),
                    ),
                    onLongPress: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("Concluir a Tarefa"),
                            content:
                                Text("Deseja concluir a tarefa ${todo.title}?"),
                            actions: <Widget>[
                              FlatButton(
                                child: const Text("Cancelar"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              FlatButton(
                                child: const Text(
                                  "Concluir",
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
                                ),
                                onPressed: () {
                                  controller.markAsDone(todo).then((data) {
                                    Navigator.of(context).pop();
                                  }).catchError((err) {
                                    var snackbar = const SnackBar(
                                      content: Text("Ops, algo deu errado!"),
                                    );
                                    Scaffold.of(context).showSnackBar(snackbar);
                                  });
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                  );
                },
              ),
      ),
    );
  }
}
