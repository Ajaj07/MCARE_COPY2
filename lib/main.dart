import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mcare_copy2/common/routes/app_pages.dart';
import 'package:mcare_copy2/splash/splash_screen1.dart';

void main() {
  runApp(MyApp());
}

/// as per figma width : 428 height : 926
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),
      minTextAdapt: true,
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen1(),
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        initialRoute: '/',
        getPages: AppPages.pages,
      ),
      // child: MaterialApp(debugShowCheckedModeBanner: false, home: Login()),
    );
  }
}
