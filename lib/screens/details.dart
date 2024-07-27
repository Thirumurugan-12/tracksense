import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatefulWidget {
  final String title;

  MapScreen({required this.title});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Text(
              widget.title,
              style: GoogleFonts.manrope(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 10.0, bottom: 0.0, left: 30.0, right: 30.0),
            child: Container(
              height: 500,
              width: 500,
              child: FlutterMap(
                options: MapOptions(
                  // center: LatLng(51.509364, -0.128928),
                  initialZoom: 3.2,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    userAgentPackageName: 'com.example.app',
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0), // Adjust padding as needed
            child: Column(
              children: [
                Card(
                  child: ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location',
                          style: GoogleFonts.manrope(fontSize: 30),
                        ), // Label
                        Text(
                            '51.509364, -0.128928'), // Replace with actual location
                      ],
                    ), // Replace with actual location
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Speed',
                                style: GoogleFonts.manrope(fontSize: 30),
                              ), // Label
                              RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                  // style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '60',
                                        style: GoogleFonts.manrope(fontSize: 50)), // Replace with actual speed
                                    TextSpan(
                                        text: ' kmph',
                                        style: TextStyle(fontSize: 20)), // Unit
                                  ],
                                ),
                              ),
                              
                            ],
                          ), // Replace with actual speed
                        ),
                      
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ETA',
                                style:GoogleFonts.manrope(fontSize: 30),
                              ), // Label
                              RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                  // style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '15',
                                        style: GoogleFonts.manrope(fontSize: 50)), // Replace with actual speed
                                    TextSpan(
                                        text: ' mins',
                                        style: TextStyle(fontSize: 20)), // Unit
                                  ],
                                ),
                              ),
                            ],
                          ), // Replace with actual ETA
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
