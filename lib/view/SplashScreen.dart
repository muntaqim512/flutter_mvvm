import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/Utiles/Utils.dart';
import 'package:getx_mvvm/view_models/services/splash_services.dart';

import '../data/ExceptionHandle.dart';
import '../res/Componenets/MyText.dart';
import '../res/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    // TODO: implement initState*
    super.initState();
    splashServices.isLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: MyText(
          text: "Welcome MVVM",
          fontWeight: FontWeight.bold,
          color: AppColor.whiteColor,
          fontSize: 20,
        ),
      ),
    );
  }
}
