import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

/*class MyMap extends StatefulWidget {
  _MyMap createState() => _MyMap();
}*/

// ignore: must_be_immutable
class MyMap extends StatelessWidget {
  GoogleMapController mapController;

  double lat = 0.00;
  double lon = 0.00;
  LatLng seoul = LatLng(126.734086, 127.269311);
  
  Future<Position> getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    lat = position.latitude;
    lon = position.longitude;

    return position;
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    /*return Center(
        child: GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(target: LatLng(lat, lon), zoom: 8.0),
    ));*/
    return getCurrentLocation() != null
        ? Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: GoogleMap(
              initialCameraPosition:
                  CameraPosition(target: LatLng(lat, lon), zoom: 8),
            ),
          )
        : Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: GoogleMap(
              initialCameraPosition:
                  CameraPosition(target: seoul, zoom: 8),
            ),
          );
  }
}
