import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({
    @required this.topColor,
    @required this.bottomColor,
    @required this.child,
  });

  final Color topColor;
  final Color bottomColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[
            topColor,
            bottomColor,
          ])),
      child: child,
    );
  }
}
