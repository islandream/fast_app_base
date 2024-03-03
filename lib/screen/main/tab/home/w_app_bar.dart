import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/dialog/d_andy_test.dart';
import 'package:fast_app_base/screen/notification/s_notification.dart';
import 'package:flutter/material.dart';

class TtossAppBar extends StatefulWidget {
  const TtossAppBar({super.key});

  @override
  State<TtossAppBar> createState() => _TtossAppBarState();
}

class _TtossAppBarState extends State<TtossAppBar> {
  final bool showRedDot = true;
  bool isDotRed = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.appBarBackground,
      height: 60,
      child: Row(
        children: [
          Width(10),
          Image.asset(
            "$basePath/icon/toss.png",
            height: 30,
          ),
          const Expanded(child: SizedBox()),
          Image.asset(
            "$basePath/icon/map_point.png",
            height: 30,
          ),
          const Width(10),
          Tap(
            onTap: () {
              AndyTestDialog(
                text: "다이얼로그용 텍스트 넘기기",
              ).show();
            },
            child: Stack(
              children: [
                Image.asset(
                  "$basePath/icon/notification.png",
                  height: 30,
                ),
                if (showRedDot)
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.circle,
                        color: isDotRed ? Colors.red : Colors.blue,
                        size: 6,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const Width(10),
        ],
      ),
    );
  }

  void testFunction() {
    isDotRed = false;
    setState(() {});
    print("테스트 function excuted");
  }
}
