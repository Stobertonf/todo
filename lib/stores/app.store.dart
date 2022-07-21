part 'app.store.g.dart';
import 'package:mobx/mobx.dart';
import 'package:todo/models/todo-item.model.dart';

class AppStore = _AppStore with _$AppStore;

//Conceitos de orientação a objetos.
//Classe Abstrada só pode ser herdada, mas Não pode ser instanciada.
abstract class _AppStore with Store {
  @observable //Não precisa colocar o tipo (string etc). usado para variáveis normais
  String currentState = "none";

  @observable
  bool busy = false;

  @observable
  //List  observables
  ObservableList<TodoItem> todos = new ObservableList<TodoItem>();

  @action
  void changeSelected(String state) {
    currentState = state;
  }

  @action
  void add(TodoItem item) {
    todos.add(item);
  }

  @action
  void setTodos(List<TodoItem> items) {
    todos.addAll(items);
  }

  @action
  void clearTodos() {
    todos = new ObservableList<TodoItem>();
  }
}
