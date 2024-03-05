import 'package:flutter/material.dart';

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}

extension TextThemeInContext on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}

extension ThemeInContext on BuildContext {
  ThemeData get themeOf => Theme.of(this);
}

extension SizeInContext on BuildContext {
  Size get size => MediaQuery.of(this).size;
}

extension PaddingInContext on BuildContext {
  EdgeInsets get padding => MediaQuery.of(this).padding;
}

extension MediaQueryInContext on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension NavigateToInContext on BuildContext {
  void navigateToNamed(String routeName) {
    Navigator.of(this).pushNamed(routeName);
  }
}

extension NavigateToInContextWithArguments on BuildContext {
  void navigateToNamedWithArguments(String routeName, Object arguments) {
    Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }
}

extension NavigateToInContextWithReplacement on BuildContext {
  void navigateToNamedWithReplacement(String routeName) {
    Navigator.of(this).pushReplacementNamed(routeName);
  }
}

extension NavigateToInContextWithReplacementAndArguments on BuildContext {
  void navigateToNamedWithReplacementAndArguments(
      String routeName, Object arguments) {
    Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);
  }
}

extension NavigateToInContextWithPopUntil on BuildContext {
  void navigateToNamedWithPopUntil(String routeName) {
    Navigator.of(this).pushNamedAndRemoveUntil(routeName, (route) => false);
  }
}

extension NavigateToInContextWithPopUntilAndArguments on BuildContext {
  void navigateToNamedWithPopUntilAndArguments(
      String routeName, Object arguments) {
    Navigator.of(this).pushNamedAndRemoveUntil(routeName, (route) => false,
        arguments: arguments);
  }
}

extension PopInContext on BuildContext {
  void pop() {
    Navigator.of(this).pop();
  }
}
