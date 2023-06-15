import 'package:bookly_app/core/utilies/assets.dart';
import 'package:flutter/material.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.blue,
          image: const DecorationImage(
            fit: BoxFit.fill,
              image: AssetImage(AssetData.test),
          ),
        ),
      ),
    );
  }
}
