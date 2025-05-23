import 'package:get/get.dart';

validInput(String val, int min,int max,String type){
   if (val.isEmpty) {
        return "can't be empty";
      }

    if (type =="username") {
      if (!GetUtils.isUsername(val)) {
        return "not valid username";
      }
    }

    if (type == "email") {
      if (!GetUtils.isEmail(val)) {
        return "not valid email";
      }
    }

    if (type == "phone") {
      if (!GetUtils.isPhoneNumber(val)) {
        return "not valid phone";
      }
    }

      if (val.length < min) {
        return "value can't be less than $min";
      }

      if (val.length > max) {
        return "value can't be large than $max";
      }
    
}