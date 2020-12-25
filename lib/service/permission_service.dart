import 'dart:async';
import 'package:app_settings/app_settings.dart';
import 'package:permission_handler/permission_handler.dart';

/*
    권한은 splash screen -> google login -> permission 으로 함
    구글 로그인에 성공하면 permission check를 진행
 */

class PermissionService {
  /*bool _storagePermission = false;

  Future<bool> checkPermission() async {
    Map<Permission, PermissionStatus> status =
        await[Permission.locationAlways, Permission.locationWhenInUse].request();

    bool per = true;

    status.forEach((permission, permissionStatus) {
      if(!permissionStatus.isGranted) {
        per = false; // 하나라도 허용이 안되면 false
        AppSettings.openAppSettings();
      }
    });

    return per;
  }*/

}