import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:tutorial_3/src/services/todo_service.dart';
import 'package:tutorial_3/src/view_models/new_todo_view_model.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'new-todo',
  styleUrls: const [
    'new_todo_component.scss.css'
  ],
  templateUrl: 'new_todo_component.html',
  directives: const [materialDirectives],
  providers: const [materialProviders],
)
class NewTodoComponent {
  NewTodoViewModel viewModel = NewTodoViewModel();
  TodoService service;

  NewTodoComponent(this.service);

  void onAddClicked() {
    service.add(viewModel.toTodo());
    _todoAddedStreamController.add(NewTodoEvents.onTodoAdded);
  }

  final _todoAddedStreamController = new StreamController<NewTodoEvents>();
  @Output() Stream<NewTodoEvents> get onAdded => _todoAddedStreamController.stream;
}

enum NewTodoEvents {
  onTodoAdded
}