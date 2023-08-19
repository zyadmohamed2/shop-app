import 'package:get/get.dart';
import 'package:shop/core/constant/routesname.dart';

abstract class VerfiyCodeSignUpController extends GetxController{
  checkCode();
  goToSuccessSignUp();
}
class VerfiyCodeSignUpControllerImp extends VerfiyCodeSignUpController{ 
  late String verificode;
  @override
  checkCode() {
    
  }
  
  @override
  goToSuccessSignUp() {
    Get.offAllNamed(AppRouts.SuccsesSignUp);
  }
  @override
  void onInit() {
    super.onInit();
  }
  @override
  void dispose() {
    super.dispose();
  }
}