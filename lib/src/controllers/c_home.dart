import 'package:flutter/material.dart';
import 'package:recipe_app_v/src/controllers/controllers.dart';

class HomeController extends BaseController {
  PageController pageController = PageController();
  ValueNotifier<int> page = ValueNotifier(0);

  void changePage(int index) {
    page.value = index;
    print(page.value);
  }
}
