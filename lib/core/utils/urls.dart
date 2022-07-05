class Urls {
  static const String baseUrl = 'https://api.gnavi.tk/api/v1';

  /// Auth
  static String login = "$baseUrl/login";

  /// Me
  static String userInfo = "$baseUrl/guides/me";
  /// Guide
  static String username = "guide_navi";
  static String guideUserInfo = "$baseUrl/guides/$username/info";
  static String skills = "$baseUrl/guides/$username/skills";
  static String generalInfo = "$baseUrl/guides/$username/general_info";
}
