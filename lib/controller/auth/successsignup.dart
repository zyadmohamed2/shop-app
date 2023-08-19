import 'package:get/get.dart';
import 'package:shop/core/constant/routesname.dart';

abstract class SuccsesSignUpController extends GetxController{
  goToLogIn();
}
class SuccsesSignUpControllerImp extends SuccsesSignUpController{
  @override
  goToLogIn() {
    Get.offAllNamed(AppRouts.LogIn);
  }

}