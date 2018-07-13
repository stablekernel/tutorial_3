import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';
import 'package:tutorial_3/src/routing/routes.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'menu',
  styleUrls: const [
    'menu_component.scss.css'
  ],
  templateUrl: 'menu_component.html',
  directives: const [materialDirectives, routerDirectives],
  providers: const [materialProviders],
)
class MenuComponent {
  final Routes _routes;
  final Router _router;

  MenuComponent(this._routes, this._router);
  
  void routeToTodo() => _router.navigate(_routes.todo.toUrl());
  void routeToAdd() => _router.navigate(_routes.newTodo.toUrl());
}
