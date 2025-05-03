import 'package:ecommerce_app/core/class/status_request.dart';
import 'package:ecommerce_app/core/functions/handling_data_controller.dart';
import 'package:ecommerce_app/data/data_source/remote/test_data.dart';
import 'package:get/get.dart';

class TestController extends GetxController{
  TestData testData= TestData(Get.find());

  List data =[];
  late StatusRequest statusRequest;
  
  getData()async{
    statusRequest = StatusRequest.loading;
    var response = await testData.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success ==  statusRequest) {
      data.addAll(response['data']);
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}