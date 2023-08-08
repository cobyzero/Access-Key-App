import 'package:access_key_app/config/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RenderItemOption extends StatelessWidget {
  const RenderItemOption({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });
  final String title;
  final IconData icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(1.w),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.black),
          color: kContainersColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 20.w,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
