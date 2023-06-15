import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utilies/assets.dart';
import '../../../../../../core/utilies/styles.dart';
import 'book_rating.dart';

class BestSellers extends StatelessWidget {
  const BestSellers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5/4,
            child: Container(
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.blue,
                image:  const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetData.test),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child:  Text (
                    'Harry Poter and Goblit the Fire',
                    style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
               const SizedBox(
                 height: 3,
               ),
                const Text(
                    'J.K. Rolling',
                  style: Styles.textStyle14,
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      '19 dollarr',
                    style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    BookRating(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
