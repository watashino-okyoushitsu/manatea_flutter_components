import 'package:flutter/material.dart';

import '../theme_data/theme_data.dart';
import 'text/body1_text.dart';
import 'text/button2_text.dart';
import 'text/h4_text.dart';

/// 対象ユーザーを通報・ブロックできるダイアログ
class ReportAndBlockDialog extends StatelessWidget {
  const ReportAndBlockDialog({
    Key? key,
    required this.isStudent,
    required this.onReportPressed,
    required this.onBlockPressed,
  }) : super(key: key);

  final bool isStudent;
  final VoidCallback onReportPressed;
  final VoidCallback onBlockPressed;

  @override
  Widget build(BuildContext context) {
    // TODO(nakashima): 共通のDialogに置き換える
    return SimpleDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(2),
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 24,
      ),
      title: const H4Text(
        '通報・ブロック',
        textAlign: TextAlign.center,
      ),
      children: <Widget>[
        Body1Text(
          isStudent ? 'この生徒を通報・ブロックしますか？' : 'この先生を通報・ブロックしますか？',
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        // 通報
        ElevatedButton(
          key: const Key('onTap1'),
          style: ElevatedButton.styleFrom(
            primary: ManateaColor.secondary,
          ),
          onPressed: onReportPressed,
          child: const Button2Text('通報する'),
        ),
        const SizedBox(height: 8),
        // ブロック
        ElevatedButton(
          key: const Key('onTap2'),
          style: ElevatedButton.styleFrom(
            primary: ManateaColor.secondary,
          ),
          onPressed: onBlockPressed,
          child: const Button2Text('ブロックする'),
        ),
        const SizedBox(height: 8),
        // キャンセル
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: ManateaColor.basic200,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Button2Text('やめる'),
        ),
      ],
    );
  }
}
