import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    final String image = kIsWeb ? 'https://cors-anywhere.herokuapp.com/$imageUrl' : imageUrl;

    return ClipRRect(
   borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6/4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: image,
          errorWidget:(context,url, error) =>const Icon(Icons.error),
          placeholder:(context,url) =>const Center(child: CircularProgressIndicator()),
          )
        ),
    );
  }
}
