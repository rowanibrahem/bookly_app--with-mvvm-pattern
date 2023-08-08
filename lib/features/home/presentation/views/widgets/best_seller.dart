import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../constants.dart';

import '../../../../../../core/utilies/styles.dart';
import '../../../../../core/models/book_model/book_model.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {

  const BookListViewItem({Key? key, required this.bookModel}) : super(key: key);
 final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push('/BookView' , extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??''),
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
                     bookModel.volumeInfo.title!,
                      style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                 const SizedBox(
                   height: 3,
                 ),
                   Text(
                      bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                      style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Expanded(
                          child: BookRating(
                            rating: bookModel.volumeInfo.averageRating ?? 4,
                            count: bookModel.volumeInfo.ratingsCount  ?? 2500,
                          )
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 Shimmer getShimmerLoading(){
  return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
    child: GestureDetector(
      onTap: (){
        GoRouter.of(context).push('/BookView' , extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??''),
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
                      bookModel.volumeInfo.title!,
                      style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Expanded(
                          child: BookRating(
                            rating: bookModel.volumeInfo.averageRating ?? 4,
                            count: bookModel.volumeInfo.ratingsCount  ?? 2500,
                          )
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );,
  );
 }