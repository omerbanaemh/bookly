import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo{
  @override
  Future<Either<dynamic, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<dynamic, List<BookModel>>> fetchNewsetBooks() {
    // TODO: implement fetchNewsetBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<dynamic, List<BookModel>>> fetchSimilarBooks({required String category}) {
    // TODO: implement fetchSimilarBooks
    throw UnimplementedError();
  }

}