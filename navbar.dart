import 'package:cinepolis/bottom_navigation.dart';
import 'package:cinepolis/cinema_page.dart';
import 'package:cinepolis/mybooking.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  void changeSelectedNavBar(int index) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 27, 28, 115),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/home'
              );
            },
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(
              Icons.local_movies,
              color: Color.fromARGB(255, 27, 28, 115),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/mybooking'
              );
            },
          ),
          label: 'My Booking',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(
              Icons.movie_creation_outlined,
              color: Color.fromARGB(255, 27, 28, 115),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/movie'
              );
            },
          ),
          label: 'Movie',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(
              Icons.view_sidebar_rounded,
              color: Color.fromARGB(255, 27, 28, 115),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/cinema'
              );
            },
          ),
          label: 'Cinema',
        ),
      ],
    );
  }
}