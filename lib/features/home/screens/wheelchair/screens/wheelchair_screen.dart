// ignore_for_file: use_build_context_synchronously, library_private_types_in_public_api, avoid_print

import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:neurosync/features/home/screens/wheelchair/widgets/wheelchair_controller/wheelchair_controller_item/arrow_up.dart';
import '../cubit/wheelchair_cubit.dart';
import '../widgets/wheelchair_controller/wheelchair_controller_item/wheelchair_controller_item.dart';
import '../widgets/wheelchair_controller/wheelchair_controller_lower_section/undo_btn.dart';
import '../widgets/wheelchair_controller/wheelchair_controller_lower_section/wheelchair_controller_lower_section.dart';
import '../widgets/wheelchair_controller/wheelchair_controller_statistical_section.dart';
import '../widgets/wheelchair_controller/wheelchair_controller_upper_section.dart';

class WheelChairScreen extends StatefulWidget {
  const WheelChairScreen({
    super.key,
  });

  @override
  _WheelChairState createState() => _WheelChairState();
}

class _WheelChairState extends State<WheelChairScreen> {
  LatLng? _currentPosition;
  TextEditingController? addressTFController;
  Timer? _timer;
  late WheelcairCubit wheelcairCubit;
  LatLng? selectedPosition;

  void onMapCreated(GoogleMapController controller) {
    WheelcairCubit wheelcairCubit = WheelcairCubit.get(context);
    wheelcairCubit.mapController = controller;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    determinePosition();
    _startTimer(context);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    wheelcairCubit = WheelcairCubit.get(context);
  }

  @override
  void dispose() {
    wheelcairCubit.mapController?.dispose();
    super.dispose();
  }

  void _startTimer(context) {
    WheelcairCubit wheelcairCubit = WheelcairCubit.get(context);
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (wheelcairCubit.componentWidget == null) {
        // Setting Initial Point
        wheelcairCubit.changeCurrentChatControllerComponent(context,
            selectedControllercomponent: const WheelcairBackBtn());
        log("Setting Initial Point");
      } else {
        if (wheelcairCubit.compareWidgets(
            wheelcairCubit.componentWidget, const WheelchairArrowUp())) {
          // Resetting
          wheelcairCubit.changeCurrentChatControllerComponent(context,
              selectedControllercomponent: null);

          log("Resetting");
        } else {
          wheelcairCubit.changeCurrentChatControllerComponent(
            context,
            selectedControllercomponent:
                wheelcairCubit.componentWidget.neighbors(context)["top"],
          );
        }
      }
    });
  }

  Future determinePosition() async {
    WheelcairCubit wheelcairCubit = WheelcairCubit.get(context);
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
    wheelcairCubit.markers.addAll([
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

  Widget _buildMap() {
    if (_currentPosition == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return BlocBuilder<WheelcairCubit, WheelcairState>(
        builder: (context, state) {
          WheelcairCubit wheelcairCubit = WheelcairCubit.get(context);
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
                    WheelChairControllerUpperSection(),
                    // WheelChairControllerMiddleSection(),
                    WheelChairControllerItem(),
                    WheelChairControllerLowerSection(),
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
                        wheelcairCubit.markers.clear();

                        selectedPosition =
                            LatLng(argument.latitude, argument.longitude);
                        wheelcairCubit.markers.addAll([
                          Marker(
                            markerId: const MarkerId("position"),
                            position:
                                LatLng(argument.latitude, argument.longitude),
                          )
                        ]);
                        setState(() {});
                      },
                      markers: wheelcairCubit.markers),
                ),
              ),
            ],
          );
        },
      );
    }
  }
}
