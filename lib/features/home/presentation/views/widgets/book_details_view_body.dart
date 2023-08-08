
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import '../../../../../core/models/book_model/book_model.dart';
import 'book_details_section.dart';
import 'custom_book_details_appbar.dart';


class BookDetailsViewBody extends StatelessWidget {
   BookDetailsViewBody({Key? key, required this.bookModel}) : super(key: key);
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BookDetailsSection(
                  book: bookModel,
                ),

                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
