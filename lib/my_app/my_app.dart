import 'package:flutter/material.dart';
import 'package:islamii_app/Configration/Theme/myTheme.dart';
import 'package:islamii_app/presentation/Home/homeScreen.dart';
import "package:islamii_app/core/utils/routsManager.dart" ;
import 'package:islamii_app/presentation/splash/splashScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        routesManager.HomeRoute : (_) =>HomeScreen(),
        routesManager.splashRoute : (_) =>splashScreen(),
      },
      initialRoute: routesManager.splashRoute,
      theme:MyTheme.lightTheme ,
      // darkTheme: ThemeData(),
      // themeMode: ThemeMode.dark,
    );
  }
}
