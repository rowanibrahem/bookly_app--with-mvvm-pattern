
// import '../../data/models/book_model/book_model.dart';
 part of 'featured_books_cubit.dart';


abstract class FeaturedBookState extends Equatable{
  const FeaturedBookState();
  List <Object> get props =>[];
}
class FeaturedBooksInitial extends FeaturedBookState{}
class FeaturedBooksLoading extends FeaturedBookState{}
class FeaturedBooksFailure extends FeaturedBookState{
  final String errMessage;

  FeaturedBooksFailure(this.errMessage);

}
class FeaturedBooksSuccess extends FeaturedBookState{
  final List<BookModel> books;

  FeaturedBooksSuccess(this.books);

}