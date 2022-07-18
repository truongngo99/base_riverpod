class Urls {
  static const String baseUrl = 'https://api.gnavi.tk/api/v1';
  static const String baseDevUrl = 'https://app.dev.guide-navi.com';


  /// Auth
  static String login = "$baseUrl/login";
  static String logout = "$baseDevUrl/v1/logout";

  /// Me
  static String userInfo = "$baseUrl/v1/guides/me";
  /// Guide
  static String username = "guide_navi";
  static String guideUserInfo = "$baseUrl/guides/$username/info";
  static String skills = "$baseUrl/guides/$username/skills";
  static String generalInfo = "$baseUrl/guides/$username/general_info";
}
