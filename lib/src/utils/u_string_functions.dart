class StringFunctions{
  static String? capitalizeFirst(String s) {
    if (s == null) return null;
    if (s.isEmpty) return s;
    return s[0].toUpperCase() + s.substring(1).toLowerCase();
  }

  static String? capitalize(String value) {
    if (value == null) return null;
    if (value.isEmpty) return value;
    return value.split(' ').map(capitalizeFirst).join(' ');
  }
}