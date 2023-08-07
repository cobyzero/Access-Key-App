import 'package:access_key_app/config/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RenderWindows extends StatelessWidget {
  const RenderWindows({
    super.key,
    this.child,
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
    return Scaffold(
      floatingActionButton: floatingActionButton,
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.only(
            left: padding ?? 5.h,
            right: padding ?? 5.h,
          ),
          child: child,
        ),
      ),
    );
  }
}
