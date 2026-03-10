import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String route,
      {Object? arguments, bool useRootNavigator = true}) {
    return Navigator.of(this, rootNavigator: useRootNavigator)
        .pushNamed(route, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String route,
      {Object? arguments, bool useRootNavigator = true}) {
    return Navigator.of(this, rootNavigator: useRootNavigator)
        .pushReplacementNamed(route, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String route,
      {bool Function(Route<dynamic>)? predicate,
      Object? arguments,
      bool useRootNavigator = true}) {
    return Navigator.of(this, rootNavigator: useRootNavigator)
        .pushNamedAndRemoveUntil(
      route,
      predicate ?? (route) => false,
      arguments: arguments,
    );
  }

  void pop() => Navigator.of(this).pop();
}
