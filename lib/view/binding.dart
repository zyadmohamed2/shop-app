import 'package:get/get.dart';
import 'package:shop/controller/auth/signup_controller.dart';
import 'package:shop/core/class/crud.dart';

class MyBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpControllerImp(), fenix: true);
    Get.put(Crud());
  }

}