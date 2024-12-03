import 'package:cinepolis/cinema_page.dart';
import 'package:cinepolis/home_page.dart';
import 'package:cinepolis/movie_page.dart';
import 'package:flutter/material.dart';
import 'login_view.dart'; // Pastikan import file login_view.dart
import 'splash.dart'; // Import file splash.dart
import 'mybooking.dart';
import 'bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashView(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => DashboardPage(),
        '/mybooking': (context) => BookingPage(),
        '/movie': (context) => MoviesPage(),
        '/cinema': (context) => CinemaPage(),
      },
    );
  }
}
