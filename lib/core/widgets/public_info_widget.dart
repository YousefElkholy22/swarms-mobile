import 'package:flutter/material.dart';

import '../helpers/enums/device_type.dart';
import '../helpers/functions/get_device_type.dart';

class InfoWidget extends StatelessWidget {
  final Widget Function(BuildContext context, DeviceInfo deviceInfo) builder;

  const InfoWidget({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        var mediaQueryData = MediaQuery.of(context);
        var deviceInfo = DeviceInfo(
          orientation: mediaQueryData.orientation,
          deviceType: getDeviceType(mediaQueryData),
          screenWidth: mediaQueryData.size.width,
          screenHeight: mediaQueryData.size.height,
          localHeight: constrains.maxHeight,
          localWidth: constrains.maxWidth,
        );
        return builder(context, deviceInfo);
      },
    );
  }
}

class DeviceInfo {
  final Orientation orientation;
  final DeviceType deviceType;
  final double screenWidth;
  final double screenHeight;
  final double localWidth;
  final double localHeight;

  DeviceInfo({
    required this.orientation,
    required this.deviceType,
    required this.screenWidth,
    required this.screenHeight,
    required this.localWidth,
    required this.localHeight,
  });
}
