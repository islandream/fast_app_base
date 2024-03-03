import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';
import 'package:nav/nav.dart';

class AndyTestDialog extends DialogWidget {
  final String? text;
  AndyTestDialog({
    super.key,
    this.text,
    super.animation = NavAni.Bottom,
    super.barrierDismissible = true, //false시 화면 밖 터치로 닫히지 않음.
  });

  // @override
  // void hide([result]) {
  //   print("hided");
  //   super.hide(result);
  // }

  @override
  State<AndyTestDialog> createState() => _AndyTestDialogState();
}

class _AndyTestDialogState extends DialogState<AndyTestDialog> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 200,
          width: double.infinity,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.text ?? "",
                  style: const TextStyle(color: Colors.black),
                ),
                TextButton(
                    onPressed: () {
                      widget.hide(); //다이얼로그 닫기
                    },
                    child: const Text("닫기버튼"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
