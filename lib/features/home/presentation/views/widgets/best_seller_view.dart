import 'package:bookly_app/core/widgets/custom_error.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/view_model/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller.dart';

class BestSellerItemView extends StatefulWidget {
  const BestSellerItemView({Key? key}) : super(key: key);

  @override
  State<BestSellerItemView> createState() => _BestSellerItemViewState();
}

class _BestSellerItemViewState extends State<BestSellerItemView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit , NewestBooksState>(
      builder: (context , state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return LoadingIndicator();
        }
      },
    );
  }
}
