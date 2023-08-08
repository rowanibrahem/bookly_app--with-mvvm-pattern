import 'package:bookly_app/core/utilies/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentations/views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import '../../features/home/presentation/views/book_view_detail.dart';
import '../../features/splash/presentation/views/splash_view.dart';
import '../models/book_model/book_model.dart';

abstract class AppRouter{
 static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context , state) => const SplashScreen(),
    ),
   GoRoute(
     path: '/homeView',
     builder: (context , state) => const HomeView(),
   ),
   GoRoute(
     path: '/BookView',
     builder: (context , state) => BlocProvider(
         create: (context) => SimilarBooksCubit(
           getIt.get<HomeRepoImpl>(),
         ),
     child:  BookViewDetails(bookModel: state.extra as BookModel,)),
   ),
   GoRoute(
     path: '/SearchView',
     builder: (context , state) => const SearchView(),
   ),
  ]);
}