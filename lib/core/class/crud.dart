import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/class/status_request.dart';
import 'package:ecommerce_app/core/functions/check_internet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> getData(
    String linkUrl,
  ) async {
    try {
      if (await checkInternet()) {
        var response = await http.get(
          Uri.parse(linkUrl),
          headers: {
            "Content-Type": "application/json",
            "Authorization":
                "Bearer 2|CBPzjKwbW5aBKs7JFxC5aGbrDryJOsrpT1OV4CST3c587df9"
          },
        );
        print(response.body.toString());
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          return Right(responseBody);
        } else {
          return Left(StatusRequest.serverFailure);
        }
      } else {
        return Left(StatusRequest.offlineFailure);
      }
    } catch (_) {
      return Left(StatusRequest.serverFailure);
    }
  }

  Future<Either<StatusRequest, Map>> postData(String linkUrl, Map data) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(
          Uri.parse(linkUrl),
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer 2|CBPzjKwbW5aBKs7JFxC5aGbrDryJOsrpT1OV4CST3c587df9"
          },
          body: data,
        );
        print(response.body.toString());
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          return Right(responseBody);
        } else {
          return Left(StatusRequest.serverFailure);
        }
      } else {
        return Left(StatusRequest.offlineFailure);
      }
    } catch (_) {
      return Left(StatusRequest.serverException);
    }
  }
}
