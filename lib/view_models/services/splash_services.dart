import 'dart:async';

import 'package:get/get.dart';

import '../../res/routes/routes_name.dart';

class SplashServices {
  void isLoading() {
    Timer(Duration(seconds: 3), () {
      Get.toNamed(RoutesName.loginScreen);
    });
  }
}
