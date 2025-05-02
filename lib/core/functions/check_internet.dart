import 'dart:io';

Future<bool> checkInternet() async {
  try {
    List<InternetAddress> result = await InternetAddress.lookup("google.com");
    if (result.isEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    }else {
      return false;
    }
  } on SocketException catch (_) {
    return false;
  }
}
