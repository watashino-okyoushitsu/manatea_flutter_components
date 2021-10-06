import 'package:flutter/material.dart';

/// [child]で指定したWidgetは表示しながら、画面全体をタップできなくし、インジケータを表示する
class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    Key? key,
    this.child,
    this.loading,
  })  : assert((child == null && loading == null) ||
            (child != null && loading != null)),
        super(key: key);

  final Widget? child;
  final bool? loading;

  @override
  Widget build(BuildContext context) {
    if (this.child == null) {
      // childが無い場合は常にインジケーターを表示する
      return const Center(child: CircularProgressIndicator());
    }
    final loading = this.loading!;
    final child = this.child!;
    if (loading) {
      // キーボードが表示されていた場合に閉じる
      FocusScope.of(context).unfocus();
    }
    return Stack(
      children: <Widget>[
        child,
        if (loading)
          // ユーザーが背面のコンテンツを触れなくする
          const ModalBarrier(
            color: Colors.black45,
            dismissible: false,
          ),
        if (loading) const Center(child: CircularProgressIndicator()),
      ],
    );
  }
}
