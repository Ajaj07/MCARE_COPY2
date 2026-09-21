import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcare_copy2/features/home/controller/home_screen_controller.dart';
import 'package:mcare_copy2/features/home/screens/widgets/chat_doctor_section.dart';
import 'package:mcare_copy2/features/home/screens/widgets/consultation.dart';
import 'package:mcare_copy2/features/home/screens/widgets/health_article_tile.dart';
import 'package:mcare_copy2/features/home/screens/widgets/health_search_bar.dart';
import '../../../common/widgets/navbar/bottom_nav_bar/bottom_nav_bar.dart';
import '../../../utils/theme/widget/text_theme.dart';
import 'widgets/best_selling_product.dart';
import 'widgets/doctor_category_section.dart';
import 'widgets/edit_profile_now.dart';
import 'widgets/nearby_hospital_section.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Register your GetX controller here
    final controller = Get.put(HomeScreenController());

    return Scaffold(
      backgroundColor: Colors.white,
      /* bottomNavigationBar: Obx(
        () => NavigationBarTheme(
          data: NavigationBarThemeData(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((Set<WidgetState> states) {
              if (states.contains(WidgetState.selected)) {
                // Selected label style
                return const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  fontFamily: 'Khula',
                  color: MColors.textSecondaryColor,
                );
              }
              // Unselected label style
              return const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                fontFamily: 'Khula',
                color: MColors.textThirtyColor,
              );
            }),
            indicatorColor: Colors.transparent, // remove default pill if not needed
          ),
          child: NavigationBar(
            selectedIndex: controller.bottom_nav_selected_index.value,
            onDestinationSelected: (index) {
              controller.bottom_nav_selected_index.value = index;
            },
            destinations: [
              // ---------------- Home ----------------
              NavigationDestination(
                // icon -> shown when UNSELECTED
                icon: Image.asset(
                  'assets/images/home_broken.png', // <-- unselected asset
                  width: 28,
                  height: 28,
                  fit: BoxFit.cover,
                ),
                // selectedIcon -> shown when SELECTED
                selectedIcon: Image.asset(
                  'assets/images/home_filled.png', // <-- selected asset (replace with your actual file)
                  width: 28,
                  height: 28,
                  fit: BoxFit.cover,
                ),
                label: 'Home',
              ),

              // ---------------- Services ----------------
              NavigationDestination(
                icon: Image.asset(
                  'assets/images/Services.png', // <-- unselected asset
                  width: 28,
                  height: 28,
                  fit: BoxFit.cover,
                ),
                selectedIcon: Image.asset(
                  'assets/images/Services_filled.png', // <-- selected asset (replace with your actual file)
                  width: 28,
                  height: 28,
                  fit: BoxFit.cover,
                ),
                label: 'Services',
              ),

              // ---------------- History ----------------
              NavigationDestination(
                icon: Image.asset(
                  'assets/images/history_icon.png', // <-- unselected asset
                  width: 28,
                  height: 28,
                  fit: BoxFit.cover,
                ),
                selectedIcon: Image.asset(
                  'assets/images/history_filled.png', // <-- selected asset (replace with your actual file)
                  width: 28,
                  height: 28,
                  fit: BoxFit.cover,
                ),
                label: 'History',
              ),

              // ---------------- Profile ----------------
              NavigationDestination(
                icon: Image.asset(
                  'assets/images/profile_broken.png', // <-- unselected asset
                  width: 28,
                  height: 28,
                  fit: BoxFit.cover,
                ),
                selectedIcon: Image.asset(
                  'assets/images/profile_filled.png', // <-- selected asset (replace with your actual file)
                  width: 28,
                  height: 28,
                  fit: BoxFit.cover,
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
      */
      // Pass the controller instance into your custom navigation bar
      bottomNavigationBar: CustomBottomNavigationBar(controller: controller),
      body: Obx(() => controller.screens2[controller.bottom_nav_selected_index.value]),
      // getting index from GetX
      // HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size.fromHeight(kToolbarHeight), child: HomeAppBar()),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Edit Profile Now Container
            Padding(padding: EdgeInsets.only(bottom: 25), child: EditProfileNow()),

            Padding(
              padding: EdgeInsets.only(left: 28, right: 28),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 32),

                  // Search Box
                  HealthSearchBar(),
                  SizedBox(height: 32),

                  /// Doctor Category
                  DoctorCatogorySection(),

                  SizedBox(height: 32),

                  ///Consultation with a specialist Container
                  ConsultationContainer(),

                  SizedBox(height: 32),
                  // chart Doctor Section
                  Text('Chat Doctor', style: MTextTheme.headlineMedium.copyWith(fontSize: 16)),
                  SizedBox(height: 14),
                  // ChatDoctorTile(),
                  ChatDoctorSection(),

                  /// Best Seling Product
                  SizedBox(height: 32),
                  Text('Best Selling Products', style: MTextTheme.headlineMedium.copyWith(fontSize: 16)),
                  SizedBox(width: 16),
                  // best seling product tile
                  BestSellingProductSection(),
                  SizedBox(height: 32),

                  ///Near by Hospital's section
                  // near by hospital Text
                  Text('Nearby Hospitals', style: MTextTheme.headlineMedium.copyWith(fontSize: 16)),
                  SizedBox(width: 16),
                  //near By Hopital Cards
                  NearbyHospitalSection(),
                  SizedBox(height: 32),

                  /// health Article section
                  // Health article text
                  Text('Health Article', style: MTextTheme.headlineMedium.copyWith(fontSize: 16)),
                  SizedBox(width: 16),

                  //health Article Tile
                  HealthArticletile(
                    imageName: 'assets/images/covid19.png',
                    label1: 'Disease Prevention',
                    label2: 'Understanding Vaccination, The Importance of Preventative Medicine',
                  ),
                  SizedBox(height: 16),
                  HealthArticletile(
                    imageName: 'assets/images/yoga.png',
                    label1: 'Disease Prevention',
                    label2: 'Understanding Vaccination, The Importance of Preventative Medicine',
                  ),
                  SizedBox(height: 16),
                  HealthArticletile(
                    imageName: 'assets/images/covid19.png',
                    label1: 'Disease Prevention',
                    label2: 'Understanding Vaccination, The Importance of Preventative Medicine',
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      surfaceTintColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Hi', style: MTextTheme.headlineSmall),
          Text(', Ajaj', style: MTextTheme.headlineMedium),
        ],
      ),
      actions: [
        InkWell(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                duration: Duration(seconds: 2),
                backgroundColor: Colors.blueAccent,
                content: Text(
                  ' Height of Screen is :${MediaQuery.of(context).size.height}',
                  style: MTextTheme.headlineMedium,
                ),
              ),
            );
          },
          child: Image.asset('assets/icons/cart_outline.png', width: 24, height: 24, fit: BoxFit.cover),
        ),
        SizedBox(width: 12),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  duration: Duration(seconds: 2),
                  backgroundColor: Colors.deepPurpleAccent,
                  content: Text(
                    ' Width of Screen is :${MediaQuery.sizeOf(context).width}',
                    style: MTextTheme.headlineMedium,
                  ),
                ),
              );
            },
            child: Image.asset('assets/icons/bell_bing_outline.png', width: 24, height: 24, fit: BoxFit.cover),
          ),
        ),
        // SizedBox(width: 12),
      ],
      centerTitle: false,
      backgroundColor: Colors.transparent,
    );
  }
}
