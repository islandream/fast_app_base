import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  final VoidCallback myFunction;
  const NotificationScreen({super.key, required this.myFunction});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextButton(
                  onPressed: () {
                    //(widget.myFunction) ?? print("asefasefasefasef");
                    print(widget.myFunction);
                  },
                  child: const Text("테스트버튼")),
              TextButton(
                  onPressed: () {
                    print("이건 눌러지나?");
                  },
                  child: const Text("테스트버튼")),
            ],
          ),
        ),
      ),
    );
  }
}
