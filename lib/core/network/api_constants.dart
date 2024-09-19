class ApiConstants {
  ApiConstants._();
  //static final baseUrl = Env.baseUrl;
}

class ApiEndPoints {
  ApiEndPoints._();

  /// Auth
  static const login = "/login";
  static const register = "/register";
  static const forgotPassword = "/forgot-password";
  static const resetPassword = "/reset-password";
  static const profile = "/profile";
  static const updateProfile = "/update-profile";
  static const changePassword = "/change-password";
  static const logout = "/logout";
}

class ApiHeaders {
  ApiHeaders._();

  static const contentType = "content-type";
  static const applicationJson = "application/json";
  static const accept = "accept";
  static const acceptLanguage = "Accept-Language";
  static const english = "en";
  static const arabic = "ar";
}
