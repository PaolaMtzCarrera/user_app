import 'package:flutter/material.dart';
import 'package:user_app/presentation/screens/home/create_profile_view/create_profile_view.dart';
import 'package:user_app/presentation/screens/home/home_view/home_view.dart';
import 'package:user_app/presentation/screens/home/profile_view/profile_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User App',
      initialRoute: '/',
      routes: {
        // ignore: prefer_const_constructors
        '/': (context) => HomeScreen(),
        '/createProfile': (context) => const CreateProfileScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}

