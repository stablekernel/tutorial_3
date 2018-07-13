import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'package:tutorial_3/src/components/todo_list/todo_list_component.template.dart' as todoComponent;
import 'package:tutorial_3/src/components/new_todo/new_todo_component.template.dart' as newTodoComponent;
import 'package:tutorial_3/src/routing/route_paths.dart' as paths;

@Injectable()
class Routes {
  static final _todo = new RouteDefinition(
    routePath: paths.todoPath,
    component: todoComponent.TodoListComponentNgFactory,
  );

  static final _new = new RouteDefinition(
    routePath: paths.newPath,
    component: newTodoComponent.NewTodoComponentNgFactory,
  );

  RouteDefinition get todo => _todo;
  RouteDefinition get newTodo => _new;

  final List<RouteDefinition> all = [
    _todo,
    _new,
    new RouteDefinition.redirect(path: '', redirectTo: paths.todoPath.toUrl()),
  ];
}