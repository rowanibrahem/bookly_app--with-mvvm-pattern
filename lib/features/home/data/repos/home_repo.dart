import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

abstract class Homeepo{
  Future<Either<Failure,List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
}