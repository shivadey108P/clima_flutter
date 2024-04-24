import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitute;

  Future<void> getCurrentLocation() async {
    try {
      LocationPermission permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitute = position.longitude;
    } on Exception catch (e) {
      print(e);
    }
  }
}
