import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../home/presentation/view_model/newest_books_cubit/newest_books_cubit.dart';
import '../../../../home/presentation/views/widgets/best_seller.dart';


class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit , NewestBooksState>(
        builder: (context , state) {
          if (state is NewestBooksSuccess) {
            return ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: BookListViewItem(
                      bookModel: state.books[index],
                    ),
                  );
                }
            );
          } else if (state is NewestBooksFailure) {
            return CustomErrorWidget(errMessage: state.errMessage);
          } else {
            return LoadingIndicator();
          }
        }
    );
  }
}
