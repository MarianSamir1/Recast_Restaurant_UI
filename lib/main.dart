import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/services/bloc_observer/bloc_observer.dart';
import 'package:recast_restaurant_ui/my_app.dart';

Future<void> main() async {
  // Ensure that Flutter bindings are initialized before running the app
  WidgetsFlutterBinding.ensureInitialized();
  // Ensure that the screen size is available before running the app
  await ScreenUtil.ensureScreenSize();
  //bloc observer
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}
