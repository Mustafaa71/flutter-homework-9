import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const double _latitude = 24.694969;
  static const double _longitude = 46.724129;

  static const CameraPosition initialCameraPosition = CameraPosition(target: LatLng(_latitude, _longitude), zoom: 15);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('POGGYAZS'),
        actions: const [
          Icon(
            Icons.search,
            size: 40.0,
          ),
        ],
      ),
      body: Stack(
        children: const [
          GoogleMap(initialCameraPosition: initialCameraPosition),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
              size: 40.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.label,
              color: Colors.black,
              size: 40.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month,
              color: Colors.black,
              size: 40.0,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
