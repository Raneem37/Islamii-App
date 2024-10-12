import 'package:flutter/material.dart';

class MyTheme {
 static final ThemeData lightTheme =  ThemeData(
     appBarTheme: AppBarTheme(
       titleTextStyle: TextStyle(
           fontWeight: FontWeight.w700 ,
           color: Colors.black,
           fontSize: 22
       ),
       backgroundColor: Colors.transparent,
       elevation: 0,
       centerTitle: true ,
     ),
    scaffoldBackgroundColor: Colors.transparent,
   bottomNavigationBarTheme: BottomNavigationBarThemeData(
     selectedItemColor: Colors.black ,
     unselectedItemColor: Colors.white ,
     showSelectedLabels: true,
     showUnselectedLabels: true,
     selectedIconTheme: IconThemeData(
       size:36
     )


   )
 ) ;


}