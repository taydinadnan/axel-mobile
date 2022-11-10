import 'package:axel_mobile/view/onboarding/pages/on_boarding_first_screen.dart';
import 'package:flutter/material.dart';

import 'view/onboarding/pages/on_boarding_second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: OnBoardingSecondScreen(),
    );
  }
}
