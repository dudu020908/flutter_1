enum AppRoute { start, main, result }

extension AppRouteExtension on AppRoute {
  String get toPath => '/$name';
}
