import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_responsive_design_architecture/responsive_layout/utils/device_platform.dart';
import 'package:flutter_responsive_design_architecture/responsive_layout/utils/device_type.dart';

class ResponsiveLayoutHelper {
  final BuildContext context;

  MediaQueryData get mediaQueryData {
    return MediaQuery.of(context);
  }

  ResponsiveLayoutHelper({required this.context});

  DeviceType getDeviceType() {
    double deviceWidth = mediaQueryData.size.shortestSide;

    if (deviceWidth > 950) {
      return DeviceType.desktop;
    }

    if (deviceWidth > 600) {
      return DeviceType.tablet;
    }

    return DeviceType.mobile;
  }

  Orientation getOrientation() {
    return mediaQueryData.orientation;
  }

  DevicePlatform getPlatform() {
    if (Platform.isAndroid) {
      return DevicePlatform.android;
    }
    if (Platform.isIOS) {
      return DevicePlatform.ios;
    }
    if (Platform.isMacOS) {
      return DevicePlatform.macos;
    }
    if (Platform.isWindows) {
      return DevicePlatform.windows;
    }
    if (Platform.isLinux) {
      return DevicePlatform.linux;
    }
    return DevicePlatform.fuchsia;
  }

  Size getScreenSize() {
    return mediaQueryData.size;
  }
}
