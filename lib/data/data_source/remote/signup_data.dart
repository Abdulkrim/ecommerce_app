import 'package:ecommerce_app/core/class/crud.dart';
import 'package:ecommerce_app/link_api.dart';

class SignupData {
  Crud crud;

  SignupData(this.crud);

  postData(
      {required String username,
      required String password,
      required String email,
      required String phone}) async {
    var response = await crud.postData(AppLink.signup, {
      "username": username,
      "password": password,
      "email": email,
      "phone": phone,
    });
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
