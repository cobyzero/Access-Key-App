import 'package:access_key_app/config/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RenderListItem extends StatelessWidget {
  const RenderListItem({
    super.key,
    required this.listItem,
    required this.onChanged,
    required this.value,
    required this.title,
  });

  final List<String> listItem;
  final Function(String?) onChanged;
  final String value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 13.sp,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                width: 1,
                color: Colors.black,
              )),
          child: DropdownButton(
            isExpanded: true,
            style: TextStyle(
              color: kTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 10.sp,
            ),
            dropdownColor: kBackgroundColor,
            underline: const SizedBox.shrink(),
            value: value,
            items: listItem
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ))
                .toList(),
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
