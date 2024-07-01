import 'package:devotee_matrimony/pages/education_page.dart';
import 'package:devotee_matrimony/pages/family_page.dart';
import 'package:devotee_matrimony/pages/login_page.dart';
import 'package:devotee_matrimony/pages/mobile_page.dart';
import 'package:devotee_matrimony/pages/otp_page.dart';
import 'package:devotee_matrimony/pages/profile1_page.dart';
import 'package:devotee_matrimony/pages/profile2_page.dart';
import 'package:devotee_matrimony/pages/search_page.dart';
import 'package:get/get.dart';
import '../pages/splash_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String otp = '/otp';
  static const String mobile = '/mobile';
  static const String profile1 = '/profile1';
  static const String profile2 = '/profile2';
  static const String education = '/education';
  static const String family = '/family';
  static const String search = '/search';
  // static const String qualification = '/qualification';
  // static const String income = '/income';

  static final List<GetPage> routes = [
    GetPage(
      name: splash,
      page: () => const SplashScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: login,
      page: () => const LoginPage(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: otp,
      page: () => const Otp(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: mobile,
      page: () => const MobilePage(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: profile1,
      page: () => const Profile1Page(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: profile2,
      page: () => const Profile2(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: education,
      page: () => const EducationPage(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: family,
      page: () => const FamilyPage(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: search,
      page: () => const SearchPage(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 400),
    ),
  ];
}
