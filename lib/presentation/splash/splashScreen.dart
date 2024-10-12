import 'package:flutter/material.dart';
import 'package:islamii_app/core/utils/AssetsManager.dart';
import 'package:islamii_app/core/utils/routsManager.dart';


class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, routesManager.HomeRoute);
    },);

    return Scaffold(
      body: Image.asset(AssetsManager.lightSplashScreen,
      width: double.infinity ,
      height: double.infinity,
      fit: BoxFit.cover,),
    );
  }
}
