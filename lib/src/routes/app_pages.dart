import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:recipe_app_v/src/routes/app_routes.dart';
import 'package:recipe_app_v/src/ui/pages/pages.dart';

class AppPages{
  static Route<dynamic> routes(RouteSettings settings){
    switch(settings.name){
      case AppRoutes.splash:
        return CupertinoPageRoute(builder: (_) => const SplashPage());
      case AppRoutes.home:
        return CupertinoPageRoute(builder: (_)=> const HomePage());
      default:
        return MaterialPageRoute(builder: (_)=> const Scaffold());
    }
  }
}