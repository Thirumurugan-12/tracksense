import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:tracksense/screens/details.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('TrackSense')),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapScreen()));
              },
              child: Card(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100, // Adjust as needed
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
