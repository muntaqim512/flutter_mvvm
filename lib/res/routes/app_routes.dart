import 'package:get/get.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/view/Home/HomeScreen.dart';
import 'package:getx_mvvm/view/Login/LoginScreen.dart';
import 'package:getx_mvvm/view/SplashScreen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RoutesName.splashScreen,
          page: () => SplashScreen(),
        ),
        GetPage(
          name: RoutesName.loginScreen,
          page: () => LoginScreen(),
        ),
        GetPage(
          name: RoutesName.homescreen,
          page: () => HomeScreen(),
        ),
      ];
}
