class AppLink {
  // if local server take IPv4 Address for laptop and make php artisan serve --host=0.0.0.0 with host zero maen allow all devices on the network to connect to the server localy.
  static const server = "http://10.0.109.103:8001/api/ecommerce_app";
  static const test = "$server/users";

  //=============== Auth ===============
  static const signup = "$server/auth/register";
  static const verifyCodeSignUp = "$server/auth/verify-code";
  
}
