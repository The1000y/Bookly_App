import 'package:bookly_app/core/errors/fauiler.dart';
import 'package:bookly_app/features/home/data/model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:fpdart/fpdart.dart';

class HomeRepoImple implements HomeRepo  {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }
} 