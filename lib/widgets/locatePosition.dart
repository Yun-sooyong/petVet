import 'dart:async';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void locatePostion() async {
  Position currentPostion;
  GoogleMapController newGoogleMapController;

  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
  currentPostion = position;

  LatLng latLngPosition = LatLng(position.latitude, position.longitude);

  CameraPosition cameraPostion =
      new CameraPosition(target: latLngPosition, zoom: 16);
  newGoogleMapController
      .animateCamera(CameraUpdate.newCameraPosition(cameraPostion));
}
