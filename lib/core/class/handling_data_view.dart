import 'package:ecommerce_app/core/class/status_request.dart';
import 'package:flutter/material.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;

  const HandlingDataView({super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Text(
            "Loading",
            style: TextStyle(fontSize: 30),
          ))
        : statusRequest == StatusRequest.offlineFailure
            ? Center(
                child: Text(
                "Offline Failure",
                style: TextStyle(fontSize: 30),
              ))
            : statusRequest == StatusRequest.serverFailure
                ? Center(
                    child: Text(
                    "Server Failure",
                    style: TextStyle(fontSize: 30),
                  ))
                : statusRequest == StatusRequest.failure
                    ? Center(
                        child: Text(
                        "No Data",
                        style: TextStyle(fontSize: 30),
                      ))
                    : widget;
  }
}
