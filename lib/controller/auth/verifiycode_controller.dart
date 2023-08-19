import 'package:get/get.dart';
import 'package:shop/core/constant/routesname.dart';

abstract class VerfiyCodeController extends GetxController{
  checkCode();
  goToResetPassword();
}
class VerfiyCodeControllerImp extends VerfiyCodeController{ 
  late String verificode;
  @override
  checkCode() {
    
  }
  
  @override
  goToResetPassword() {
    Get.offAllNamed(AppRouts.resetpassword);
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