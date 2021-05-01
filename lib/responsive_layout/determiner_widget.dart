import 'package:flutter/material.dart';
import 'package:flutter_responsive_design_architecture/responsive_layout/utils/device_enums.dart';
import 'package:flutter_responsive_design_architecture/responsive_layout/utils/responsive_layout_helper.dart';

class DeterminerWidget extends StatelessWidget {
  Widget portraitMobile;
  Widget? landscapeMobile;
  Widget? portraitTablet;
  Widget? landscapeTablet;
  Widget? desktop;
  late ResponsiveLayoutHelper _helper;
  late DeviceType _deviceType;
  late Orientation _orientation;

  DeterminerWidget({
    Key? key,
    required this.portraitMobile,
    this.landscapeMobile,
    this.portraitTablet,
    this.landscapeTablet,
    this.desktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _helper = ResponsiveLayoutHelper(context: context);
    _deviceType = _helper.getDeviceType();
    _orientation = _helper.getOrientation();

    var desktop = _desktopControl();
    var tablet = _tabletControl();
    var mobile = _mobileControl();

    if (desktop != null) {
      return desktop;
    }

    if (tablet != null) {
      return tablet;
    }

    return mobile;
  }

  Widget _mobileControl() {
    if (_orientation == Orientation.landscape && landscapeMobile != null) {
      return landscapeMobile!;
    }
    return portraitMobile;
  }

  Widget? _tabletControl() {
    if (_deviceType == DeviceType.tablet) { //You can use ?? to shorten the code but I didn't because I may need to add extra controls like platform control in the future.
      if (_orientation == Orientation.landscape && landscapeTablet != null) {
        return landscapeTablet;
      }
      return portraitTablet;
    }
  }

  Widget? _desktopControl() {
    if (_deviceType == DeviceType.desktop) {
      return desktop;
    }
  }
}
