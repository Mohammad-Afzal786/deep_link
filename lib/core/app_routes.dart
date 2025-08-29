import 'package:get/get.dart';
import '../modules/home_page.dart';
import '../modules/profile_page.dart';
import '../modules/notification_page.dart';

/// ✅ ROUTES
/// - yaha pe hum sare route names define karte hai
/// - aur GetX ke through pages ko register karte hai
class AppRoutes {
  static const String home = "/home";
  static const String profile = "/profile";
  static const String notification = "/notification";

  static final pages = [
    GetPage(name: home, page: () => const HomePage()),
    GetPage(name: profile, page: () => const ProfilePage()),
    GetPage(name: notification, page: () => const NotificationPage()),
  ];
}
