import 'package:credpal_test/domain/events/home_event.dart';
import 'package:credpal_test/domain/states/home_state.dart';
import 'package:credpal_test/models/mock/dummy.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc()
      : super(HomeStateInitial(
          products: Dummy.getProducts(),
          products2: Dummy.getProducts2(),
          merchants: Dummy.getMerchants(),
        )) {
    on<HomeEvent>((event, emit) {});
  }
}
