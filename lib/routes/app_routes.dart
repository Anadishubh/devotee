import 'package:devotee_matrimony/pages/login_page.dart';
import 'package:devotee_matrimony/pages/mobile_page.dart';
import 'package:get/get.dart';
import '../pages/splash_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String otp = '/otp';
  // static const String profile = '/profile';
  // static const String profile2 = '/profile2';
  // static const String religion = '/religion';
  // static const String email = '/email';
  // static const String location = '/location';
  // static const String martial = '/martial';
  // static const String qualification = '/qualification';
  // static const String income = '/income';

  static final List<GetPage> routes = [
    GetPage(
      name: splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: login,
      page: () => const LoginPage(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: otp,
      page: () => const MobilePage(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
    ),
  ];
}
