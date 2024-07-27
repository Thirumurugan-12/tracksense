import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:tracksense/screens/details.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'TrackSense',
          style: GoogleFonts.manrope(
              fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
        )),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapScreen(title: 'Avadi')));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(15), // radius of the curve
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(15), // radius of the curve
                      ), // Adjust as needed
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        child: FlutterMap(
                          mapController: MapController(),
                          options: MapOptions(),
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
                    ListTile(
                      leading: Icon(Icons.directions_bus),
                      title: Text('Avadi '),
                      subtitle: Text('Via Poonamallee'),
                    ),
                  ],
                ),
              ),
            ),
            // Add more cards here
          ],
        ),
      ),
    );
  }
}
