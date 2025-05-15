import 'package:ecommerce_app/core/class/crud.dart';
import 'package:ecommerce_app/link_api.dart';

class RestPasswordData {
  Crud crud;

  RestPasswordData(this.crud);

  postData({
    required String email,
    required String password,
  }) async {
    var response = await crud.postData(AppLink.resetPassword, {
      "email": email,
      "password": password,
    });
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
