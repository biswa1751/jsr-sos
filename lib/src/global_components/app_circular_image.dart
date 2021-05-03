import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AppCircleImage extends StatelessWidget {
  final double? size;
  final String? imageUrl;
  const AppCircleImage({Key? key, this.size, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: CachedNetworkImageProvider(imageUrl!),
        ),
      ),
    );
  }
}
