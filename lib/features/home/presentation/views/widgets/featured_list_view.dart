import 'package:bookly_app/core/utilies/app_router.dart';
import 'package:bookly_app/core/widgets/custom_error.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'custom_book_item.dart';

class ListBooks extends StatelessWidget {
  const ListBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit,FeaturedBookState>(
      builder: (BuildContext context, state) {
        if ( state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: GestureDetector(
                      onTap: (){
                        GoRouter.of(context).push('/BookView' , extra: state.books[index]);
                      },
                      child: CustomBookImage(
                        imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail??'',),
                    ),
                  );
                }
            ),
          );
        } else if (state is FeaturedBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return LoadingIndicator();
        }
      },
      );
  }
}