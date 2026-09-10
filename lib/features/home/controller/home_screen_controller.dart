import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
// import 'package:mcare_copy2/features/profile/screens/account_setting/account_setting.dart';
import 'package:mcare_copy2/features/profile/screens/health_history/health_history.dart';
import 'package:mcare_copy2/features/profile/screens/notifications/Notifications.dart';
import 'package:mcare_copy2/features/profile/screens/notifications/empty_notification.dart';
// import 'package:mcare_copy2/features/profile/screens/percription_history/percription_history.dart';
// import 'package:mcare_copy2/features/profile/screens/transctions/transactions.dart';
// import 'package:mcare_copy2/features/service/articel/screens/article.dart';
import 'package:mcare_copy2/features/service/hospitals/list_hospital/detail_hospital.dart';
// import 'package:mcare_copy2/features/service/medication_remainder/screens/medication_remainder/medication_remainder_empty.dart';
import 'package:mcare_copy2/features/service/medication_remainder/screens/medication_remainder/medication_remainder_fill.dart';
import 'package:mcare_copy2/features/service/shopping/screens/cart_empty/cart_empty.dart';
import 'package:mcare_copy2/features/service/shopping/screens/finding_pharmacy/finding_pharmacy.dart';
import 'package:mcare_copy2/features/service/shopping/screens/shopping_filter.dart';
// import 'package:mcare_copy2/features/service/shopping/shopping.dart';
import 'package:mcare_copy2/features/service/specialist/specialist.dart';

import '../../history/history.dart';
import '../../profile/profile.dart';
// import '../../service/chat_doctor/chat_doctor.dart';
// import '../../service/chat_doctor/doctor_details/screen/chat_screen.dart';
// import '../../service/chat_doctor/doctor_details/screen/doctor_details.dart';
// import '../../service/hospitals/list_hospital/detail_hospital.dart';
// import '../../service/hospitals/list_hospital/list_hospital.dart';
// import '../../service/medication_remainder/medication_remainder.dart';
// import '../../service/medication_remainder/screens/detail_about_drug/detail_about_drug.dart';
import '../../service/articel/articel_list.dart';
import '../../service/service.dart';
import '../../service/shopping/screens/cart_before/cart_before.dart';
import '../../service/shopping/screens/description/description_medicine.dart';
import '../../service/shopping/screens/description/description_tabbar.dart';
// import '../screens/home.dart';

class HomeScreenController extends GetxController {
  RxInt bottom_nav_selected_index = 0.obs;
  final List<Widget> screens = [
    // const HomeScreen(),
    // const ChatDoctor(), // temporary debug
    //const DoctorDetails(), // temporary debug
    // const ChatScreen(), // temporary debug
    // const ListHospital(),  // temporary debug
    // MedicationRemainderEmpty(),
    //DetailAboutDrug(),
    // Article(),
    // PercriptionHistory(),
    // Transactions(),
    // AccountSetting(),
    // Shopping(),
    CartEmpty(),
    FindingPharmacy(),
    CartBefore(),
    ShoppingFilter(),
    DescriptionTabbar(),
    DescriptionMedicine(),
    Notifications(),
    EmptyNotification(),
    HealthHistory(),
    Profile(),
    ArticelList(),
    Specialist(),
    MedicationRemainderFill(),
    DetailHospital(),
    const Service(),
    const History(),
    const Profile(),
  ];
}
