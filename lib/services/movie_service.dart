import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tmdb/constants/constants.dart';
import '../models/movie.dart';


class MovieService {

  static final dio= Dio();
  static Future<Either<String, List<Movie>>> getMovieByCategory(
      {required String api, required int page}) async {
    try {
      final response = await dio.get(api, queryParameters: {
        'api_key': apiKey,
        'page':page
      });

      final data = (response.data['results'] as List).map((e) =>
          Movie.fromJson(e)).toList();
      return Right(data);
    } on DioError catch (err) {
      print(err);
      return Left(err.message);
    }
  }
}
