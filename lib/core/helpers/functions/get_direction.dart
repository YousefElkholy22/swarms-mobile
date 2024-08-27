import 'package:flutter/material.dart';

import '../utils/navigation_service.dart';

bool isRTL() {
  return TextDirection.rtl ==
      Directionality.of(globalNavigatorKey.currentContext!);
}

bool isLTR() {
  return TextDirection.ltr ==
      Directionality.of(globalNavigatorKey.currentContext!);
}