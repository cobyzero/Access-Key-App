import 'package:access_key_app/config/util/colors.dart';
import 'package:flutter/material.dart';

class RenderWindows extends StatelessWidget {
  const RenderWindows({
    super.key,
    required this.child,
    this.backgroundColor = kBackgroundColor,
    this.padding,
    this.floatingActionButton,
  });

  final Widget? child;
  final Color backgroundColor;
  final double? padding;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: floatingActionButton,
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(padding ?? size.width * .1),
          child: child,
        ),
      ),
    );
  }
}
