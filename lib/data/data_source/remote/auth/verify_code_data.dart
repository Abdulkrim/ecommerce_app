import 'package:ecommerce_app/core/class/crud.dart';
import 'package:ecommerce_app/link_api.dart';

class VerifyCodeData {
  Crud crud;

  VerifyCodeData(this.crud);

  postData({required String email, required String verifyCode}) async {
    var response = await crud.postData(AppLink.verifyCode, {
      "email": email,
      "verifycode": verifyCode,
    });
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
