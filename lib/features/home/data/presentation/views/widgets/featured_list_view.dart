import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';

class ListBooks extends StatelessWidget {
  const ListBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index){
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: FeaturedList(),
            );
          }
      ),
    );
  }
}