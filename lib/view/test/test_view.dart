import 'package:ecommerce_app/controller/test/test_controller.dart';
import 'package:ecommerce_app/core/class/status_request.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("title"),
      ),
      body: GetBuilder<TestController>(
        builder: (controller) {
          if (controller.statusRequest == StatusRequest.loading) {
           return Center(child: Text("Loading"));
          }else if(controller.statusRequest == StatusRequest.offlineFailure){
           return Center(child: Text("Offline Failure"));
          }else if(controller.statusRequest == StatusRequest.serverFailure){
           return Center(child: Text("Server Failure"));
          }else{
           return ListView.builder(
            itemCount: controller.data.length,
            itemBuilder: (context, index) {
              return Text("${controller.data}");
            },
            );
          }
        },
        ),
    );
  }
}