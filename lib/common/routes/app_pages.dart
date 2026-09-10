import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:mcare_copy2/common/routes/app_routes.dart';
import 'package:mcare_copy2/features/onBoarding/onboarding.dart';
import 'package:mcare_copy2/splash/splash_screen1.dart';
import 'package:mcare_copy2/splash/splash_screen2.dart';

import '../../features/authentication/registration/phone_registration.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.splashScreen1,
      page: () => SplashScreen1(),
      transition: Transition.zoom,
      transitionDuration: const Duration(seconds: 2),
    ),
    GetPage(
      name: AppRoutes.onBoarding,
      page: () => Onboarding(),
      transition: Transition.zoom,
      transitionDuration: const Duration(seconds: 2),
    ),
    GetPage(
      name: AppRoutes.splashScreen2,
      page: () => SplashScreen2(),
      transition: Transition.upToDown,
      transitionDuration: const Duration(seconds: 1),
    ),
    GetPage(
      name: AppRoutes.phoneRegistration,
      page: () => PhoneRegistration(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(seconds: 1),
    ),
  ];
}
