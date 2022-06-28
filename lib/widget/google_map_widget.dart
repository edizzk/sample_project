import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_maps_flutter/google_maps_flutter.dart';

Widget buildGoogleMap() {

  const LatLng luandaPosition = LatLng(-8.838333, 13.234444);
  final Set<Marker> markers = {};
  final Marker luandaMarker = Marker(
      markerId: MarkerId(luandaPosition.toString()),
      position: luandaPosition,
      infoWindow: const InfoWindow(title: 'Luanda, Angola', snippet: "Welcome to Luanda"),
      icon: BitmapDescriptor.defaultMarker,
  );
  markers.add(luandaMarker);
  LatLng currentMapPosition = luandaPosition;

  void _onCameraMove(CameraPosition position) {
    currentMapPosition = position.target;
  }

  return GoogleMap(
      initialCameraPosition: const CameraPosition(
        target: luandaPosition,
        zoom: 12.0,
      ),
      markers: markers,
      onCameraMove: _onCameraMove
  );
}