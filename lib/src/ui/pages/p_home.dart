import 'package:flutter/material.dart';
import 'package:recipe_app_v/src/controllers/controllers.dart';
import 'package:recipe_app_v/src/utils/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomProvider(
      controller: HomeController(),
      child: Scaffold(body: Builder(builder: (BuildContext context) {
        HomeController controller =
            CustomProvider.of(context).controller as HomeController;
        print(controller.page.value);
        return Column(
          children: <Widget>[
            ValueListenableBuilder<int>(
                valueListenable: controller.page,
                builder: (BuildContext context, int value, Widget? child) {
                  return Expanded(
                    child: PageView(
                      controller: controller.pageController,
                      onPageChanged: controller.changePage,
                      children: List.generate(
                          4,
                          (int index) =>
                              Center(child: Text('Texto ${index + 1}'))),
                    ),
                  );
                }),
            const Center(child: _MenuNavigation()),
            const SizedBox(height: 20),
          ],
        );
      })),
    );
  }
}

class _MenuNavigation extends StatelessWidget {
  const _MenuNavigation();
  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    return Container(
        width: responsive.widthResponsive(90),
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              offset: const Offset(0.5, 0.5),
              blurRadius: 5,
            ),
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              offset: const Offset(0.5, 0.5),
              blurRadius: 6,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Widget>[
            _IconMenu(icon: Icons.home_outlined, color: ColorPalette.primary),
            _IconMenu(icon: Icons.favorite_border_outlined, color: Colors.grey),
            _IconMenu(icon: Icons.menu_outlined, color: Colors.grey),
            _IconMenu(icon: Icons.person_outlined, color: Colors.grey),
          ],
        ));
  }
}

class _IconMenu extends StatelessWidget {
  const _IconMenu({
    Key? key,
    required this.icon,
    required this.color,
  }) : super(key: key);

  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color,
      size: 30,
    );
  }
}
