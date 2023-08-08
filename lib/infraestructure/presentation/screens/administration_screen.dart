import 'package:access_key_app/config/util/colors.dart';
import 'package:access_key_app/infraestructure/presentation/widgets/render_item_option.dart';
import 'package:access_key_app/infraestructure/presentation/widgets/render_windows.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AdministrationScreen extends StatelessWidget {
  const AdministrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RenderWindows(
      child: Column(
        children: [
          SizedBox(
            height: 3.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Administración",
              style: TextStyle(
                fontSize: 17.sp,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          SizedBox(
            width: double.infinity,
            height: 80.h,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return RenderItemOption(
                  title: "Usuarios",
                  icon: Icons.lock,
                  onTap: () {},
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
