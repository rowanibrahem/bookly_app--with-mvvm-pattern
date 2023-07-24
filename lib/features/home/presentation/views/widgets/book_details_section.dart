
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utilies/styles.dart';
import 'book_rating.dart';

import 'books_action.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key, required this.book}) : super(key: key);
 final BookModel book;
  @override

  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child:  CustomBookImage(
            imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          book.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            book.volumeInfo.authors?[0]??'',
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
         BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
           rating: book.volumeInfo.averageRating ?? 5,
           count: book.volumeInfo.ratingsCount??2500,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
