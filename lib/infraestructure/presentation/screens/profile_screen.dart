import 'package:access_key_app/config/util/colors.dart';
import 'package:access_key_app/domain/entitys/user_entity.dart';
import 'package:access_key_app/infraestructure/presentation/widgets/render_button.dart';
import 'package:access_key_app/infraestructure/presentation/widgets/render_input.dart';
import 'package:access_key_app/infraestructure/presentation/widgets/render_list_item.dart';
import 'package:access_key_app/infraestructure/presentation/widgets/render_windows.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class ProfileScreen extends StatefulWidget {
  ProfileScreen({
    super.key,
    required this.userEntity,
  });

  UserEntity userEntity;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  static List<String> listItem = ["Activo", "Inactivo", "Pendiente"];

  @override
  Widget build(BuildContext context) {
    return RenderWindows(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  context.go("/viewUser", extra: widget.userEntity);
                },
                icon: const Icon(Icons.arrow_back_ios),
                color: kPrimaryColor,
                iconSize: 13.sp,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Icon(
              Icons.lock_person,
              size: 30.w,
              color: kPrimaryColor,
            ),
            SizedBox(
              height: 3.h,
            ),
            const RenderInput(
              title: "Nombres",
            ),
            SizedBox(
              height: 3.h,
            ),
            const RenderInput(
              title: "Apellidos",
            ),
            SizedBox(
              height: 2.h,
            ),
            const RenderInput(
              title: "Identificación",
            ),
            SizedBox(
              height: 2.h,
            ),
            const RenderInput(
              title: "Teléfono",
            ),
            SizedBox(
              height: 2.h,
            ),
            const RenderInput(
              title: "Ultimo Ingreso",
            ),
            SizedBox(
              height: 2.h,
            ),
            RenderListItem(
              title: "Estado",
              listItem: listItem,
              value: listItem.elementAt(widget.userEntity.status),
              onChanged: (p0) {
                setState(() {
                  widget.userEntity = widget.userEntity.copyWith(
                    status: listItem.indexOf(p0!),
                  );
                });
              },
            ),
            SizedBox(
              height: 3.h,
            ),
            RenderButton(
              text: "Guardar Información",
              onPressed: () {},
            ),
            SizedBox(
              height: 3.h,
            ),
          ],
        ),
      ),
    );
  }
}
