import 'package:flutter/material.dart';
import 'package:flutter_responsive_design_architecture/responsive_layout/utils/device_enums.dart';

class ScreenInformation {
  final DeviceType deviceType;
  final Orientation orientation;
  final Size screenSize;
  final Size boundsSize;

  ScreenInformation(
      {required this.deviceType,
      required this.orientation,
      required this.screenSize,
      required this.boundsSize});

  @override
  String toString() {
    return "DeviceType ${deviceType.toString()} | Orientation ${orientation.toString()} | ScreenSize ${screenSize.toString()} | BoundsSize ${boundsSize.toString()}";
  }
}
