import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:petvet/widgets/roundSquareButton.dart';
import 'package:petvet/widgets/searchBar.dart';
import 'dart:async';
import 'package:petvet/widgets/sideDrawer.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

var _scaffoldKey = GlobalKey<ScaffoldState>();

class _HomeScreenState extends State<HomeScreen> {
  // 지도 표시
  Completer<GoogleMapController> _controllerGoogleMap = Completer();
  GoogleMapController newGoogleMapController;

  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  Position currentPosition;
  var geolocator = Geolocator();

  static final CameraPosition _kGooglePlex =
      CameraPosition(target: LatLng(126.734086, 127.269311), zoom: 16);

  // 실행하면 현재의 위치를 가져와서 해당 위치로 카메라를 이동시킴
  void _locatePosition() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    currentPosition = position;

    LatLng latLngPosition = LatLng(position.latitude, position.longitude);

    CameraPosition cameraPosition =
        new CameraPosition(target: latLngPosition, zoom: 16);
    newGoogleMapController
        .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GoogleMap(
                initialCameraPosition: _kGooglePlex,
                mapType: MapType.normal,
                onMapCreated: (GoogleMapController controller) {
                  _controllerGoogleMap.complete(controller);
                  newGoogleMapController = controller;

                  _locatePosition();
                },
                myLocationEnabled: true,
                myLocationButtonEnabled: false,
                zoomControlsEnabled: false,
                zoomGesturesEnabled: true,
              ),
            ),
            SearchBarWidget(),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: EdgeInsets.only(bottom: 15, right: 5),
                height: 70,
                width: 60,
                child: RoundSquareButton(
                  tag: 'recenter',
                  child: Icon(
                    Icons.my_location,
                    color: Colors.redAccent,
                  ),
                  onTap: () {
                    _locatePosition();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
