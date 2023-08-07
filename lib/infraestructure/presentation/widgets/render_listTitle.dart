import 'package:access_key_app/config/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RenderListTile extends StatelessWidget {
  const RenderListTile({
    super.key,
    required this.title,
    required this.text,
    this.titleColor = Colors.grey,
    this.textColor = kTextColor,
  });

  final String title;
  final String text;
  final Color titleColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "$title:",
      ),
      titleTextStyle: TextStyle(
        color: titleColor,
        fontSize: 15.sp,
        fontWeight: FontWeight.bold,
      ),
      subtitle: Text(
        text,
        style: TextStyle(
          fontSize: 15.sp,
          color: textColor,
        ),
      ),
    );
  }
}
