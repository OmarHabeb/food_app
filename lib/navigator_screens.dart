
import 'package:flutter/material.dart';

class NavigatorScreen extends StatelessWidget {
  final Widget child;

  NavigatorScreen(this.child);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => child,
        );
      },
    );
  }
}