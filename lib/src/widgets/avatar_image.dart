import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../manatea_flutter_components.dart';

/// アバター画像を表示するWidget
/// 画像がない場合は背景色を表示する
class AvatarImage extends StatelessWidget {
  const AvatarImage({
    Key? key,
    required this.imageUrl,
    this.radius,
  }) : super(key: key);

  final String? imageUrl;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: ManateaColor.background200,
      backgroundImage: imageUrl == null
          ? null
          : CachedNetworkImageProvider(
              imageUrl!,
            ),
    );
  }
}
