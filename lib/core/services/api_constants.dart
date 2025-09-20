class ApiConstants {
  static const String apiBaseUrl = "https://vcare.integration25.com/api/";

  static const String login = "auth/login";
  static const String register = "auth/register";
  static const String allDoctors = "doctor/index";
  static String filterDoctors({required int index}) {
    return 'doctor/doctor-filter?specialization=$index';
  }

  static String searchDoctor({required String name}) {
    return 'doctor/doctor-search?name=$name';
  }
}
