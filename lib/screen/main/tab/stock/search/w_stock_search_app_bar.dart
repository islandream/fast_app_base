import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/util/app_keyboard_util.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_text_field_with_delete.dart';
import 'package:flutter/material.dart';

class StockSearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController controller;
  const StockSearchAppBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: kToolbarHeight,
        color: Colors.black87,
        child: Row(
          children: [
            Tap(
              onTap: () => Nav.pop(context),
              child: SizedBox(
                height: kToolbarHeight,
                width: kToolbarHeight,
                child: const Arrow(
                  size: 20,
                  direction: AxisDirection.left,
                  color: Colors.white,
                ).p(20),
              ),
            ),
            Expanded(
              child: TextFieldWithDelete(
                controller: controller,
                texthint: "검색해 보세요",
                textInputAction: TextInputAction.search,
                onEditingComplete: () {
                  print("검색됨");
                  AppKeyboardUtil.hide(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
