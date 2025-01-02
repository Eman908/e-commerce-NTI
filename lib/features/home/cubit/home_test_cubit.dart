import 'package:e_commerce/features/home/cubit/home_test_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTestCubit extends Cubit<HomeTestState> {
  HomeTestCubit() : super(HomeTestStatesInitial());

  int currentIndex = 0;
  // IconData currentIcon = Icons.favorite_border;

  void changeIndex(int value) {
    currentIndex = value;
    emit(UpdateIndex());
  }

  // void changeIcon() {
  //   currentIcon = currentIcon == Icons.favorite_border
  //       ? Icons.favorite
  //       : Icons.favorite_border;
  //   emit(UpdateFavIcon());
  // }
}
