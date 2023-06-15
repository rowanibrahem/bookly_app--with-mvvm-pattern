import 'package:bookly_app/core/utilies/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utilies/styles.dart';
import 'best_seller.dart';
import 'custom_list_view_item.dart';
import 'custum_appbar.dart';
import 'featured_list_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppBar(),
          ListBooks(),
          SizedBox(
            height: 50,
          ),
          Text(
              'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellers(),
        ],
      ),
    );
  }
}






