import 'dart:math';

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:weather_app_using_getx/models/weather_model.dart';
import 'package:weather_app_using_getx/providers/api_service.dart';

class permissionController extends Geolocator {
  permissionController() {}

  // Future<String?> getAddressFromLatLng(Position position) async {
  //   try {
  //     List<Placemark> placeMarks =
  //         await placemarkFromCoordinates(position.latitude, position.longitude);
  //     Placemark place = placeMarks[0];
  //     return "${place.street}, ${place.subLocality},${place.subAdministrativeArea}, ${place.postalCode}";
  //   } catch (e) {
  //     return null;
  //   }
  // }
}
