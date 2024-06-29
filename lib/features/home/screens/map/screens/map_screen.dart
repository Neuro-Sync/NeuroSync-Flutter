// ignore_for_file: library_private_types_in_public_api
import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';
import '../widgets/map_controller/map_controller_lower_section.dart';
import '../widgets/map_controller/map_controller_upper_section.dart';
import '../widgets/map_controller_middle_section/map_controller_middle_section.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({
    super.key,
  });

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  LatLng? _currentPosition;
  Set<Marker> markers = {};
  TextEditingController? addressTFController;
  List<Prediction> predictions = [];
  GoogleMapController? mapController;
  String area = 'search';

  final TextEditingController searchController = TextEditingController();
  LatLng? selectedPosition;

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    addressTFController = TextEditingController();
    determinePosition();
  }

  Future determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Navigator.pop(context);
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Navigator.pop(context);

        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      Navigator.pop(context);
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    var position = await Geolocator.getCurrentPosition();
    markers.addAll([
      Marker(
        markerId: const MarkerId("position"),
        position: LatLng(position.latitude, position.longitude),
      )
    ]);
    setState(() {
      _currentPosition = LatLng(position.latitude, position.longitude);
      selectedPosition = _currentPosition;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _buildMap()),
    );
  }

  Future<Position> _getGeoLocationPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Future<void> getAddressFromLatLong(LatLng position) async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark place = placemarks[0];
    area = ' ${place.locality}, ${place.country}';
  }

  void _changeLocation(double zoom, LatLng latLng) {
    double newZoom = zoom > 15 ? zoom : 15;
    _currentPosition = latLng;
    setState(() {
      mapController!.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(target: latLng, zoom: newZoom)));
      markers.clear();
      selectedPosition = latLng;
      markers.add(Marker(
        markerId: const MarkerId('1'),
        position: latLng,
      ));
    });
  }

  Widget _buildMap() {
    if (_currentPosition == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Row(
        children: [
          Container(
            width: 380.w,
            height: 925.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: const Column(
              children: [
                MapControllerUpperSection(),
                MapControllerMiddleSection(),
                // MapControllerItem(),
                MapControllerLowerSection(),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 966.h,
              child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                      target: LatLng(_currentPosition!.latitude,
                          _currentPosition!.longitude),
                      zoom: 15),
                  onMapCreated: onMapCreated,
                  mapType: MapType.terrain,
                  onTap: (argument) {
                    markers.clear();

                    selectedPosition =
                        LatLng(argument.latitude, argument.longitude);
                    markers.addAll([
                      Marker(
                        markerId: const MarkerId("position"),
                        position: LatLng(argument.latitude, argument.longitude),
                      )
                    ]);
                    setState(() {});
                  },
                  markers: markers),
            ),
          ),
        ],
      );
    }
  }
}
