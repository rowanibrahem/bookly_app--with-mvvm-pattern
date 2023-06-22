import 'package:flutter/material.dart';

import 'best_seller.dart';

class BestSellerItemView extends StatefulWidget {
  const BestSellerItemView({Key? key}) : super(key: key);

  @override
  State<BestSellerItemView> createState() => _BestSellerItemViewState();
}

class _BestSellerItemViewState extends State<BestSellerItemView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
        itemBuilder:(context, index){
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BestSellers(),
          );
        }
    );
  }
}
