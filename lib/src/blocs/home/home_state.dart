// ignore_for_file: must_be_immutable

part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class GetFilmsState extends HomeState {
  FilmsResults filmsResults;
  GetFilmsState(this.filmsResults);

  List<Object> get props => [filmsResults];
}

class ErrorGetFilmsState extends HomeState {
  String error;
  ErrorGetFilmsState(this.error);
  List<Object> get props => [error];
}
