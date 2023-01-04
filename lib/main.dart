import 'package:flutter/material.dart';
import 'package:recipe_app_v/src/routes/app_pages.dart';
import 'package:recipe_app_v/src/utils/utils.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'recipe_app_v',
      initialRoute: '/splash',
      onGenerateRoute: AppPages.routes,
      theme: ThemeData.light().copyWith(
          iconTheme: const IconThemeData(color: ColorPalette.secondary)),
    );
  }
}
