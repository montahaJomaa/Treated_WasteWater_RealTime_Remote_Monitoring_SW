import 'package:flutter/material.dart';
import 'package:ifilter_mobile_application/src/utils/theme/theme.dart';
import 'src/features/authentication/screens/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iFILTER',
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    );
  }
}
