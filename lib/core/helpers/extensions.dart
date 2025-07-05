import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  /// Navigate to the route with the given [name] and optional [arguments].
  Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(this).pushNamed<T>(routeName, arguments: arguments);
  }

  /// Replace the current route by pushing a named route and removing the previous one.
  Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
    String routeName, {
    Object? arguments,
    TO? result,
  }) {
    return Navigator.of(this).pushReplacementNamed<T, TO>(
      routeName,
      arguments: arguments,
      result: result,
    );
  }

  /// Push the route with [routeName] and remove all the previous routes until [predicate] returns true.
  Future<T?> pushNamedAndRemoveUntil<T extends Object?>(
    String routeName,
    RoutePredicate predicate, {
    Object? arguments,
  }) {
    return Navigator.of(
      this,
    ).pushNamedAndRemoveUntil<T>(routeName, predicate, arguments: arguments);
  }

  /// Pop the current route off the navigator optionally returning [result].
  void pop<T extends Object?>([T? result]) {
    Navigator.of(this).pop<T>(result);
  }
}
