import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/data/network/baseApi_response.dart';
import 'package:http/http.dart' as http;

import '../ExceptionHandle.dart';

class NetworkApiServices extends baseApiServices {
  @override
  Future<dynamic> getApi(String Url) async {
    if (kDebugMode) {
      print(Url);
    }
    dynamic JsonResponse;
    try {
      final response =
          await http.get(Uri.parse(Url)).timeout(Duration(seconds: 10));
      JsonResponse = returnResponse(response);
    } on SocketException {
      throw InternetException();
    }
    return JsonResponse;
  }

  @override
  Future<dynamic> postApi(var data, String Url) async {
    if (kDebugMode) {
      print(Url);
      print(data);
    }
    dynamic JsonResponse;
    try {
      final response = await http
          .post(
            Uri.parse(Url),
            body: jsonEncode(data),
          )
          .timeout(Duration(seconds: 10));
      JsonResponse = returnResponse(response);
    } on SocketException {
      throw InternetException();
    }
    return JsonResponse;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic JsonResponse = jsonDecode(response.body);
        return JsonResponse;
      case 422:
        throw SeverException();
    }
  }
}
