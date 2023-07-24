
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookViewDetails extends StatefulWidget {
   BookViewDetails({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;

  @override
  State<BookViewDetails> createState() => _BookViewDetailsState();
}

class _BookViewDetailsState extends State<BookViewDetails> {

  @override
  void initState(){
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();


  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: BookDetailsViewBody(),
      ),
    );
  }
}
