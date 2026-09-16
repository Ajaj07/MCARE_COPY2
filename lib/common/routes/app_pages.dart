import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:mcare_copy2/common/routes/app_routes.dart';
import 'package:mcare_copy2/features/authentication/verification/phone_verification.dart';
import 'package:mcare_copy2/features/home/screens/home.dart';
import 'package:mcare_copy2/features/onBoarding/onboarding.dart';
import 'package:mcare_copy2/splash/splash_screen1.dart';
import 'package:mcare_copy2/splash/splash_screen2.dart';

import '../../features/authentication/login/login.dart';
import '../../features/authentication/login/verification_success.dart';
import '../../features/authentication/registration/phone_registration.dart';
import '../../features/authentication/verification/email_verification.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.splashScreen1,
      page: () => SplashScreen1(),
      transition: Transition.circularReveal,
      transitionDuration: const Duration(seconds: 2),
    ),
    GetPage(
      name: AppRoutes.onBoarding,
      page: () => Onboarding(),
      // temporary
      // page: () => Home(),
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

    GetPage(
      name: AppRoutes.emailVerification,
      page: () => EmailVerification(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: AppRoutes.phoneVerification,
      page: () => PhoneVerification(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => Login(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),

    GetPage(
      name: AppRoutes.verificationSuccess,
      page: () => VerificationSuccess(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => Home(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 200),
    ),
  ];
}
