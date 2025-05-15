class AppLink {
  // if local server take IPv4 Address for laptop and make php artisan serve --host=0.0.0.0 with host zero maen allow all devices on the network to connect to the server localy.
  static const server = "http://192.168.0.107:8000/api/ecommerce_app";
  static const test = "$server/users";

  //=============== Auth ===============
  static const signup = "$server/auth/register";
  static const verifyCode = "$server/auth/verify-code";
  static const login = "$server/auth/login";

  //=============== Forget Password ===============
  static const checkEmail = "$server/forget-password/check-email";
  static const resetPassword = "$server/forget-password/reset-password";
  
}
