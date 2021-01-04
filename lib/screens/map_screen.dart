import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapScreen extends StatefulWidget {
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController mapController;
  LatLng _initialPosition = LatLng(126.734086, 127.269311);
  Location location = Location();

  set locationSubscription(StreamSubscription<LocationData> locationSubscription) {}

  void _onMapCreated(GoogleMapController _ctrl) async {
    mapController = await _ctrl;

    locationSubscription  = location.onLocationChanged.listen(
      (event) {
        mapController.animateCamera(
          CameraUpdate.newCameraPosition(CameraPosition(
              target: LatLng(event.latitude, event.longitude), zoom: 18)),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition:
                CameraPosition(target: _initialPosition, zoom: 16),
            mapType: MapType.normal,
            onMapCreated: _onMapCreated,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            zoomControlsEnabled: false,
          )
        ],
      ),
    );
  }
}
