import 'package:ecommerce_app/core/class/crud.dart';
import 'package:ecommerce_app/link_api.dart';

class CkeckEmailData {
  Crud crud;

  CkeckEmailData(this.crud);

  postData({
    required String email,
  }) async {
    var response = await crud.postData(AppLink.checkEmail, {
      "email": email,
    });
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
