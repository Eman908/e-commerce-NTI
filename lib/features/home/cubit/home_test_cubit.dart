import 'package:e_commerce/features/home/cubit/home_test_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTestCubit extends Cubit<HomeTestState> {
  HomeTestCubit() : super(HomeTestStatesInitial());
  int currentIndex = 0;
  void changeIndex(value) {
    currentIndex = value;
    emit(UpdateIndex());
  }
}