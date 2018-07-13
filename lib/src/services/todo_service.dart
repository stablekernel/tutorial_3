import 'package:angular/di.dart';
import 'package:tutorial_3/src/models/todo.dart';

@Injectable()
class TodoService {
  List<Todo> todos = new List();

  void add(Todo todo) => todos.add(todo);
}
