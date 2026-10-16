import 'package:bookly_app/core/errors/fauiler.dart';
import 'package:bookly_app/features/home/data/model/book_model.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class HomeRepo {


 Future<Either<Failure,List<BookModel>>> fetchFeatureBooks();
 Future<Either<Failure,List<BookModel>>>  fetchBestSellerBooks();
 


}

