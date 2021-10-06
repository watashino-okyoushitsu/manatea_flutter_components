import 'package:flutter/material.dart';

/// 連打防止のボタン
/// [onPressed]に非同期な関数を設定すると、実行中はインジケータを表示し押せなくなる
/// [textLabel]でボタンに表示する文字列を指定する
/// [executingLabel]を指定すれば、実行中のインジケータとともに文字列を表示可能
/// [buttonStyle]を指定しない場合はThemeに設定された、
/// `Theme.of(context)`の`ElevatedButtonThemeData`を使用する
@immutable
class AwaitableButton extends StatefulWidget {
  const AwaitableButton({
    Key? key,
    required this.onPressed,
    required this.textLabel,
    this.executingLabel,
    this.buttonStyle,
  }) : super(key: key);

  /// 押した時の動作
  /// `null` の場合はボタンが非活性になる
  final Future<void> Function()? onPressed;

  /// ボタンに表示するラベル文字列
  final String textLabel;

  /// 実行中に表示する文字列。nullなら表示しない
  final String? executingLabel;

  /// ボタンのスタイル設定。任意設定
  final ButtonStyle? buttonStyle;

  @override
  _AwaitableButtonState createState() => _AwaitableButtonState();
}

class _AwaitableButtonState extends State<AwaitableButton> {
  var _isExecuting = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed == null ? null : _onPressed,
      style: widget.buttonStyle ?? Theme.of(context).elevatedButtonTheme.style,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: _isExecuting
            ? widget.executingLabel == null
                ? const _Indicator()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const _Indicator(),
                      const SizedBox(width: 8),
                      Text(widget.executingLabel!),
                    ],
                  )
            : Text(widget.textLabel),
      ),
    );
  }

  Future<void> _onPressed() async {
    if (_isExecuting) {
      // ボタンアクション実行中は何もしない（連打防止）
      return;
    }
    setState(() => _isExecuting = true);
    await widget.onPressed!.call();
    // 画面遷移先から戻ってきた時等のために存在確認してから実行
    if (mounted) {
      setState(() => _isExecuting = false);
    }
  }
}

/// 実行中に表示するインジケータ
class _Indicator extends StatelessWidget {
  const _Indicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 24,
      height: 24,
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.white),
        strokeWidth: 2,
      ),
    );
  }
}
