// ignore_for_file: avoid_print

import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.lowest);
      print('hello');
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
