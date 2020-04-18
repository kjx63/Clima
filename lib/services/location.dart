import 'package:geolocator/geolocator.dart';

class Location {
  double latitdude;
  double longitude;

  Location({this.latitdude,this.longitude});

  Future<void> getCurrentLocation()async {
    try {
      Position position = await Geolocator().getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
        locationPermissionLevel: GeolocationPermission.locationWhenInUse,
      );
      latitdude = position.latitude;
      longitude = position.longitude;
      
    } catch (e) {
      print(e);
    }
  }

}

