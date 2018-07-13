import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:tutorial_3/src/components/menu/menu_component.dart';
import 'package:angular_router/angular_router.dart';
import 'package:tutorial_3/src/routing/routes.dart';
import 'package:tutorial_3/src/services/todo_service.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: const [
    'package:angular_components/app_layout/layout.scss.css',
    'app_component.scss.css'
  ],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives, MenuComponent, routerDirectives],
  providers: const [materialProviders, Routes, TodoService],
)
class AppComponent {
  final Routes routes;

  AppComponent(this.routes);
}
