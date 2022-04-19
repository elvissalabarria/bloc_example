import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:bloc_example/src/blocs/home/home_logic.dart';
import 'package:bloc_example/src/exceptions/error_exception.dart';
import 'package:bloc_example/src/responses/films_results.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  SimpleHomeLigic homeLigic;
  HomeBloc(this.homeLigic) : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {});
    on<GetFilmsEvent>((event, emit) async {
      emit(HomeInitial());
      try {
        var filmsResults = await homeLigic.getFilms();
        emit(GetFilmsState(filmsResults));
      } on ErrorException catch (error) {
        emit(ErrorGetFilmsState(error.error));
      }
    });
  }
}
