import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';
import 'package:tutorial_3/src/components/new_todo/new_todo_component.dart';
import 'package:tutorial_3/src/routing/routes.dart';
import 'package:tutorial_3/src/services/todo_service.dart';
import 'package:tutorial_3/src/view_models/todo_list_view_model.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'todo',
  styleUrls: const [
    'package:angular_components/app_layout/layout.scss.css',
    'todo_list_component.scss.css'
  ],
  templateUrl: 'todo_list_component.html',
  directives: const [coreDirectives, materialDirectives, routerDirectives, NewTodoComponent],
  providers: const [materialProviders],
)
class TodoListComponent {
  final Routes routes;
  final TodoService _service;
  TodoListViewModel viewModel;

  TodoListComponent(this.routes, this._service){
    viewModel = new TodoListViewModel(_service.todos);
  }

}
