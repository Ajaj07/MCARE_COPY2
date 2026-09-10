import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// or wherever your home screen is

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen1> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  Future<void> _navigateToHome() async {
    // Wait 3 seconds then go to home
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const Onboarding()));
      Get.offAllNamed('/onBoarding');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF26408B), // your blue color
      body: Center(
        child: Image.asset(
          'assets/logo/logo.png', // your original logo
          width: 180.w,
          height: 180.h,
        ),
      ),
    );
  }
}
