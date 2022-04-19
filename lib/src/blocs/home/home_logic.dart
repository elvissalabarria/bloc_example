import 'package:bloc_example/src/exceptions/error_exception.dart';
import 'package:bloc_example/src/responses/films_results.dart';
import 'package:bloc_example/src/utils/constants.dart';
import 'package:dio/dio.dart';

abstract class HomeLogic {
  Future<FilmsResults> getFilms();
}

class SimpleHomeLigic extends HomeLogic {
  @override
  Future<FilmsResults> getFilms() async {
    Dio dio = Dio();
    Response response;
    try {
      response = await dio.get(urlBase);
      return FilmsResults.fromJson(response.data);
    } on DioError catch (error) {
      throw ErrorException(error.message);
    }
  }
}
