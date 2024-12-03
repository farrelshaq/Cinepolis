import 'package:cinepolis/widget/navbar.dart';
import 'package:flutter/material.dart';

class CinemaPage extends StatefulWidget {
  @override
  _CinemaPageState createState() => _CinemaPageState();
}

class _CinemaPageState extends State<CinemaPage> {
  int _selectedTabIndex = 1; // Default to Cinema tab

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.location_on_outlined, color: Colors.grey),
                      SizedBox(width: 4),
                      Text("Malang", style: TextStyle(color: Colors.black)),
                      Icon(Icons.arrow_drop_down, color: Colors.grey),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Movie / Cinema",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                filled: true,
                fillColor: Colors.grey.shade100,
              ),
            ),
          ),
          const SizedBox(height: 6),
          // Tabs: Movie and Cinema
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    TextButton(
                      onPressed: () {Navigator.pushNamed(context, '/movie');},
                      child: const Text(
                        "Movie",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(width: 215, height: 2, color: Colors.grey),
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/cinema');
                      },
                      child: const Text("Cinema",
                          style: TextStyle(color: Colors.blue)),
                    ),
                    Container(width: 215, height: 2, color: Colors.blue),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                CinemaCard(
                  title: 'Malang Town Square',
                  distance: '8.03 km away',
                  details: 'REGULAR | LUXE',
                ),
                CinemaCard(
                  title: 'Lippo Plaza Batu',
                  distance: '11.23 km away',
                  details: 'REGULAR',
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Navbar()
    );
  }
}

class CinemaCard extends StatelessWidget {
  final String title;
  final String distance;
  final String details;

  const CinemaCard({
    required this.title,
    required this.distance,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.location_pin, color: Colors.grey, size: 16),
                SizedBox(width: 4),
                Text(
                  distance,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.event_seat, color: Colors.grey, size: 16),
                SizedBox(width: 4),
                Text(
                  details,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
