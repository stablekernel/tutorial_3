import 'package:tutorial_3/src/models/todo.dart';

class NewTodoViewModel {
  String description = "";
  bool get canAddTodo => description.length > 0;
  Todo toTodo() => new Todo(description);
}