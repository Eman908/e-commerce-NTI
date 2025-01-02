import 'package:e_commerce/core/bloc/bloc_observer.dart';
import 'package:e_commerce/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}
