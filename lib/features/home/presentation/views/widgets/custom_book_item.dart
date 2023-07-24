import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomBookImage extends StatelessWidget {
   CustomBookImage({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6/4,
      child: CachedNetworkImage(
       imageUrl: imageUrl,
        fit: BoxFit.fill,
        // placeholder: (context , url ) =>
        //      Center(child: AnimatedCircularIndicator ())
        // ,
        errorWidget: (context , url , error) => const Icon(
            Icons.error
        ),
      )
    );
  }
}
