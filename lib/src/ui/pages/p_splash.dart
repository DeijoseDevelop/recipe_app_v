import 'package:flutter/material.dart';
import 'package:recipe_app_v/src/routes/app_routes.dart';
import 'package:recipe_app_v/src/ui/widgets/widgets.dart';
import 'dart:math' as Math;

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> opacity;
  late Animation<double> scale;
  late Animation<double> rotate;
  late BuildContext _context;

  void doAnimate() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    opacity = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeIn,
      ),
    );
    scale = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.easeIn,
    ));
    rotate =
        Tween<double>(begin: 0.0, end: 4.0 * Math.pi).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.easeIn,
    ));
  }

  void doNavigate() {
    Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.of(_context).pushNamed(AppRoutes.home);
    });
  }

  @override
  void initState() {
    doAnimate();
    doNavigate();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _context = context;
    controller.forward();
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
            animation: controller,
            child: const CustomTitleText(
              text: 'RECIPE APP',
            ),
            builder: (BuildContext context, Widget? child) {
              return Transform.scale(
                scale: scale.value,
                child: Transform.rotate(
                  angle: rotate.value,
                  child: Opacity(
                    opacity: opacity.value,
                    child: child!,
                  ),
                ),
              );
            }),
      ),
    );
  }
}

