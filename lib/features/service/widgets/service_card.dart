import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../common/routes/app_routes.dart';
import '../../../utils/constants/colors.dart';

/// Model for a single service tile shown on the Services screen.
class ServiceModel {
  final String icon;
  final String label;
  final double iconSize;
  final double topPad;
  final String? route; // 👈 nullable — no route means no navigation

  const ServiceModel({
    required this.icon,
    required this.label,
    required this.iconSize,
    required this.topPad,
    this.route, // optional
  });
}

/// Data-driven list — add/remove a service by editing one entry here
const List<ServiceModel> kServices = [
  ServiceModel(
    icon: 'assets/images/specialist/service_specialits.png',
    label: 'Chat Doctor',
    iconSize: 44,
    topPad: 9.5,
    route: AppRoutes.chatDoctor,
  ),
  ServiceModel(
    icon: 'assets/images/specialist/service_specialits_1.png',
    label: 'Hospitals',
    iconSize: 44,
    topPad: 9.5,
    // route: AppRoutes.hospitals,
  ),
  ServiceModel(
    icon: 'assets/images/specialist/service_specialits_2.png',
    label: 'Emergancy\nServices',
    iconSize: 35.58,
    topPad: 5.29,
    // route: AppRoutes.emergencyServices,
  ),
  ServiceModel(
    icon: 'assets/images/specialist/service_specialits_3.png',
    label: 'Articel',
    iconSize: 44,
    topPad: 9.5,
    // 👈 no route given — tapping this tile will do nothing
  ),
  ServiceModel(
    icon: 'assets/images/specialist/service_specialits_4.png',
    label: 'Medication\nRemainder',
    iconSize: 35.58,
    topPad: 5.29,
    // route: AppRoutes.medicationReminder,
  ),
  ServiceModel(
    icon: 'assets/images/specialist/service_specialits_5.png',
    label: 'Specialization',
    iconSize: 44,
    topPad: 9.5,
    // route: AppRoutes.specialization,
  ),
];

class ServiceCard extends StatelessWidget {
  final ServiceModel service;

  const ServiceCard({super.key, required this.service});

  void _handleTap() {
    final route = service.route;
    if (route == null || route.isEmpty) return; // 👈 no route → no action
    Get.toNamed(route);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        width: 81.w,
        height: 81.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.r),
          boxShadow: [BoxShadow(color: const Color.fromARGB(96, 0, 0, 0), blurRadius: 5.r, offset: Offset(4.w, 4.h))],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(18.5.w, service.topPad.h, 18.5.w, 6.h),
              child: Image.asset(
                service.icon,
                width: service.iconSize.w,
                height: service.iconSize.w,
                fit: BoxFit.contain,
              ),
            ),
            Flexible(
              child: Text(
                service.label,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 10.sp, color: MColors.primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
