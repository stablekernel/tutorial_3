import 'package:tutorial_3/src/models/todo.dart';

class TodoListViewModel {
  List<Todo> _todoList;
  TodoListViewModel(this._todoList);

  bool get hasTodos => _todoList.isNotEmpty;
  bool shouldShowNewTodoDialog = false;
  List<Todo> get todos => _todoList;
}