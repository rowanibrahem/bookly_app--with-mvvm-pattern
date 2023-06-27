import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentations/views/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/book_view_detail.dart';
import '../../features/splash/presentation/views/splash_view.dart';

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
     builder: (context , state) => const BookViewDetails(),
   ),
   GoRoute(
     path: '/SearchView',
     builder: (context , state) => const SearchView(),
   ),
  ]);
}