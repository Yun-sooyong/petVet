import 'package:flutter/material.dart';
import 'dart:async';

//import 'package:petvet/screens/map_screen.dart';
import 'package:petvet/widgets/sideDrawer.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/*TODO

* - 토글 버튼 만들기
*    참고 => https://www.woolha.com/tutorials/flutter-using-togglebuttons-widget-examples
* - 햄버거 버튼, 현재 위치 버튼 위젯에 따로 만들기 => extends raiseButton
* - drawer 세부 만들기
* */

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

  Position currentPostion;
  var geolocator = Geolocator();

  static final CameraPosition _kGooglePlex =
      CameraPosition(target: LatLng(126.734086, 127.269311), zoom: 16);

  // 현재 위치로 이동
  void locatePostion() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    currentPostion = position;

    LatLng latLngPosition = LatLng(position.latitude, position.longitude);

    CameraPosition cameraPostion =
        new CameraPosition(target: latLngPosition, zoom: 16);
    newGoogleMapController
        .animateCamera(CameraUpdate.newCameraPosition(cameraPostion));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Colors.transparent,
        // 햄버거 버튼
        leading: Container(
          height: 60,
          width: 60,
          padding: EdgeInsets.fromLTRB(10, 23, 10, 10),
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            heroTag: 'openDrawer',
            onPressed: () {
              setState(() {
                sideDrawer();
              });
              _scaffoldKey.currentState.openDrawer();
            },
            child: Icon(
              Icons.menu_rounded,
              color: Colors.redAccent,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(
                color: Color(0xFFECEDF1),
              ),
            ),
          ),
        ),

        // 현재 위치 버튼
        actions: [
          Container(
            height: 60,
            width: 60,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              heroTag: 'recenter',
              onPressed: () {
                locatePostion();
              },
              child: Icon(
                Icons.my_location,
                color: Colors.redAccent,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                  color: Color(0xFFECEDF1),
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: sideDrawer(),
      body: Stack(
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

                locatePostion();
              },
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              zoomControlsEnabled: false,
              zoomGesturesEnabled: true,
            ),
          ),
        ],
      )
    );
  }
}

// 기존 body 내용물
/*Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                await googleSignIn.disconnect();
                await googleSignIn.signOut();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => AuthScreen()),
                        (Route<dynamic> route) => false);
              },
              child: Text("Log Out"),
              color: Colors.redAccent,
            ),
            SizedBox(
              height: 10.0,
            ),
            BottomNavi(),
          ],
        ),
      ),*/

/*
로그아웃 기능 iconbutton
IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              await googleSignIn.disconnect();
              await googleSignIn.signOut();
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => AuthScreen()),
                      (Route<dynamic> route) => false);
            },
          ),
 */
