import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/constants/constants.dart';
import 'package:recast_restaurant_ui/core/routing/app_router.dart';
import 'package:recast_restaurant_ui/core/routing/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(264, 572),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: Constants.appName,
          theme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: Colors.black,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.restaurantScreen,
          onGenerateRoute: AppRouter.generateRoute,
        );
      },
    );
  }
}
