import 'package:flutter/material.dart';

import 'colors.dart';
import 'home_page/home_page.dart';
import 'start_screen/start_screen.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Renogare',
        scaffoldBackgroundColor: amber
      ),
      routes: {
        '/':(context)=>StartScreen(),
        '/homePage':(context)=>HomePage(),
      },
    );
  }
}

