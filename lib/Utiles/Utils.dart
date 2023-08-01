import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../res/app_colors.dart';

class Utils {
  static void FieldFocus(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastmessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: AppColor.blackColor,
        textColor: AppColor.whiteColor);
  }
}
