import 'package:flutter/material.dart';
import 'package:recipe_app_v/src/controllers/controllers.dart';

class CustomProvider extends InheritedWidget {
  const CustomProvider({
    super.key,
    required super.child,
    required this.controller,
  });

  final BaseController controller;

  static CustomProvider of(BuildContext context) =>
      context.findAncestorWidgetOfExactType<CustomProvider>()!;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
