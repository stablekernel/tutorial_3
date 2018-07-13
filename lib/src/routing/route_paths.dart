import 'package:angular_router/angular_router.dart';

final todoPath = new RoutePath(path: 'todo');
final newPath = new RoutePath(path: 'new', parent: todoPath);