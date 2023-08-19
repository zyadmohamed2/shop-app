import 'package:get/get.dart';
import 'package:shop/core/class/statusrequest.dart';
import 'package:shop/core/functions/handlinddata.dart';
import 'package:shop/data/datasource/remot/test_data.dart';

class TestController extends GetxController{
  
  TestData testData = TestData(Get.find());
  List data = [];
  late StatusRequest statusRequest;
  getData()async{
    statusRequest = StatusRequest.loding;
    var respons = await testData.getData();
    statusRequest = handlingData(respons);
    if (StatusRequest.success == statusRequest) {
      data.addAll(respons['data']);
    }
    update();
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }
}