import 'package:recipe_app_v/src/utils/utils.dart';

extension GetStringUtils on String {
  String? get capitalize => StringFunctions.capitalize(this);
  String? get capitalizeFirst => StringFunctions.capitalizeFirst(this);
}
