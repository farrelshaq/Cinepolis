// import 'package:cinepolis/cinema_page.dart';
// import 'package:cinepolis/home_page.dart';
// import 'package:cinepolis/mybooking.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false, // Hapus debug banner
//       home: MainScreen(),
//     );
//   }
// }

// class MainScreen extends StatefulWidget {
//   @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   int _selectedIndex = 0; // Indeks tab yang dipilih

//   // Daftar halaman yang akan ditampilkan
//   final List<Widget> _pages = [
//     HomePage(),
//     MyBooking(),
//     MoviePage(),
//     CinemaPage(),
//   ];

//   // Fungsi untuk menangani perubahan tab
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Aplikasi Film'),
//         backgroundColor: Colors.deepPurple, // Warna AppBar
//       ),
//       body: _pages[_selectedIndex], // Menampilkan halaman sesuai indeks
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed, // Pastikan tetap terlihat meski ada 4 item
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.book_online),
//             label: 'My Booking',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.movie),
//             label: 'Movie',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.theaters),
//             label: 'Cinema',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.deepPurple, // Warna item yang dipilih
//         unselectedItemColor: Colors.grey, // Warna item yang tidak dipilih
//         onTap: _onItemTapped, // Fungsi saat tab dipilih
//       ),
//     );
//   }
// }
