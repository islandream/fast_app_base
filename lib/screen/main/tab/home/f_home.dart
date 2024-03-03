import 'package:fast_app_base/common/cli_common.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/round_button_theme.dart';
import 'package:fast_app_base/common/widget/w_big_button.dart';
import 'package:fast_app_base/common/widget/w_round_button.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/screen/dialog/d_message.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/w_app_bar.dart';
import 'package:fast_app_base/screen/main/tab/home/w_bank_account.dart';
import 'package:flutter/material.dart';

import '../../../dialog/d_color_bottom.dart';
import '../../../dialog/d_confirm.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Stack(
        children: [
          RefreshIndicator(
            edgeOffset: 60,
            displacement: 60,
            onRefresh: () async {
              await sleepAsync(const Duration(milliseconds: 1000));
            },
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 65),
                child: Column(
                  children: [
                    BigButton("토스뱅크", onTap: () => context.showSnackbar("토스뱅크를 눌렀어요")),
                    const Height(5),
                    RoundedContainer(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "자산".text.white.size(17).bold.make(),
                          const Height(10),
                          ...bankAccountList.map((e) => BankAccountWidget(e)).toList(),
                          ...bankAccountList.map((e) => BankAccountWidget(e)).toList(),
                          ...bankAccountList.map((e) => BankAccountWidget(e)).toList(),
                          for (var e in bankAccountList) BankAccountWidget(e),
                          ...bankAccountList.map((e) => BankAccountWidget(e)).toList(),
                        ],
                      ),
                    ),
                    const Height(50),
                  ],
                ).pSymmetric(h: 10),
              ),
            ),
          ),
          const TtossAppBar(),
        ],
      ),
    );
  }

  void showSnackbar(BuildContext context) {
    context.showSnackbar('snackbar 입니다.',
        extraButton: Tap(
          onTap: () {
            context.showErrorSnackbar('error');
          },
          child: '에러 보여주기 버튼'.text.white.size(13).make().centered().pSymmetric(h: 10, v: 5),
        ));
  }

  Future<void> showConfirmDialog(BuildContext context) async {
    final confirmDialogResult = await ConfirmDialog(
      '오늘 기분이 좋나요?',
      buttonText: "네",
      cancelButtonText: "아니오",
    ).show();
    debugPrint(confirmDialogResult?.isSuccess.toString());

    confirmDialogResult?.runIfSuccess((data) {
      ColorBottomSheet(
        '❤️',
        context: context,
        backgroundColor: Colors.yellow.shade200,
      ).show();
    });

    confirmDialogResult?.runIfFailure((data) {
      ColorBottomSheet(
        '❤️힘내여',
        backgroundColor: Colors.yellow.shade300,
        textColor: Colors.redAccent,
      ).show();
    });
  }

  Future<void> showMessageDialog() async {
    final result = await MessageDialog("안녕하세요").show();
    debugPrint(result.toString());
  }

  void openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }
}
