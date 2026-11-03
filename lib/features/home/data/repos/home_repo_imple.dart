import 'package:bookly_app/core/errors/fauiler.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class HomeRepoImple implements HomeRepo {
  final ApiServices apiServices;
  HomeRepoImple(this.apiServices);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiServices.fetchNewsetBooks(endPoint: 'volumes');
      var result = (data['items'] as List).map((element) {
        return BookModel.fromJson(element);
      }).toList();
      return right(result);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() async {
    try {
      var result = await apiServices.fetchFeatureBooks(endPoint: 'volumes');
      var books = (result['items'] as List).map((e) {
        return BookModel.fromJson(e);
      }).toList();
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
