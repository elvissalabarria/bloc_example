part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class GetFilmsEvent extends HomeEvent {
  GetFilmsEvent();
}
