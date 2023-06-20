part of 'home_bloc.dart';

@immutable
abstract class HomeState {

  bool isApiFetching;
  String? result;
  HomeState({required this.isApiFetching, this.result});
}

class HomeInitial extends HomeState {
  HomeInitial({required super.isApiFetching,super.result});
}
