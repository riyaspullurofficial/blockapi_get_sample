import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:blockapi/repository/home_repository.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial(isApiFetching: false)) {
    on< /*HomeEvent*/ FetchApiEvent>((event, emit) async {
      emit(/*HomeState*/ HomeInitial(isApiFetching: true));
      final data = await HomeRepository.fetchRandomString();
      emit(HomeInitial(isApiFetching: false,result: data));
    });
  }
}
