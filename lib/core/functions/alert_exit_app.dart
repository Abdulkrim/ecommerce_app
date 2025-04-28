
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

alertExitApp(bool didPop, dynamic result)  {
  Get.defaultDialog(
    title: "48".tr,
    middleText: "49".tr,
    actions: [
      ElevatedButton(
        onPressed: () {
          exit(0);
        },
        child: Text("50".tr),
      ),
      ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: Text("51".tr),
      ),
    ],
  );
}