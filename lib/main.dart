import 'package:flutter/material.dart';
import 'package:ifilter_mobile_application/src/features/authentication/screens/login/auth_page.dart';
import 'package:ifilter_mobile_application/src/utils/theme/theme.dart';
import 'src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      home: AuthPage(),
    );
  }
}
