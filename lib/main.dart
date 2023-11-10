import 'package:amazon_homepage_flutter/splashscreen.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        'homescreen' :(context) => AmazonHomePage(),
    },
      // Navigate to the SplashScreen widget
    );
  }
}




