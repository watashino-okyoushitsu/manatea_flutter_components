import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../manatea_flutter_components.dart';

/// ヘッダー画像を表示するWidget
/// 画像がない場合は背景色を表示する
class HeaderImage extends StatelessWidget {
  const HeaderImage({
    Key? key,
    required this.imageUrl,
    this.height,
    this.width = double.infinity,
    this.fit,
    this.alignment = Alignment.center,
  }) : super(key: key);

  final String? imageUrl;
  final double? height;
  final double width;
  final BoxFit? fit;

  /// 通常はAlignment.centerを指定
  /// プロフィール画像はAlignment.topCenterを指定
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: ManateaColor.background200,
      child: imageUrl == null || imageUrl!.isEmpty
          ? null
          : CachedNetworkImage(
              imageUrl: imageUrl!,
              fit: fit,
              alignment: alignment,
              errorWidget: (context, url, Object? error) => Container(
                color: ManateaColor.background200,
              ),
            ),
    );
  }
}
