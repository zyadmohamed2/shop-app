import 'package:get/get.dart';

validInput(String val, int main,int max,String  type){  
  if (val.isEmpty) {
    return "can't be Empty";
  }
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "not valid username";
    }
  }
  if(type == "email"){
    if (!GetUtils.isEmail(val)) {
      return "not valid email";
    }
  }

  if (val.length < main) {
    return "can't be less then $main";
  }
  if(val.length > max){
    return "can't be larger then $max";
  }
}