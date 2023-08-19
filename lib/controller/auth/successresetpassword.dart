import 'package:get/get.dart';
import 'package:shop/core/constant/routesname.dart';

abstract class successresetpasswordController extends GetxController{
  goToLogIn();
}
class successresetpasswordControllerImp extends successresetpasswordController{
  @override
  goToLogIn() {
    Get.offAllNamed(AppRouts.LogIn);
  }

}