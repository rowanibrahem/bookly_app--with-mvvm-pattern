import 'package:bookly_app/core/widgets/custom_error.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit , SimilarBooksState>(
      builder: (BuildContext context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height*.15,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context , index){
                  return  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: CustomBookImage(
                      imageUrl: 'https://images.unsplash.com/photo-1495344517868-8ebaf0a2044a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8c2VhcmNofGVufDB8fDB8fHww&w=1000&q=80',
                    ),
                  );
                }
            ),
          );
        } else if (state is SimilarBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return LoadingIndicator();
        }
      },

    );
  }
}
