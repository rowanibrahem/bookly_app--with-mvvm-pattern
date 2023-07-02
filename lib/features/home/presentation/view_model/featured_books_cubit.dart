
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/book_model/book_model.dart';
part 'featuredbooks_state.dart';


class FeaturedBooksCubit extends Cubit<FeaturedBookState>{
  FeaturedBooksCubit(): super(FeaturedBooksInitial());
}