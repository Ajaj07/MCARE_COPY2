import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcare_copy2/features/home/controller/home_screen_controller.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';

import '../../../utils/constants/images.dart';
import '../../../utils/theme/widget/text_theme.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Obx(() => controller.screens[controller.bottom_nav_selected_index.value]),
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
            Padding(padding: EdgeInsets.only(top: 29, bottom: 32), child: EditProfileNow()),

            Padding(
              padding: EdgeInsets.only(left: 28, right: 28),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 32),
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

class HealthSearchBar extends StatelessWidget {
  const HealthSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0XFFF9F9F9),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: MColors.thirtyColor),
      ),
      child: Row(
        children: [
          const Icon(Icons.search, color: MColors.textThirtyColor, size: 22),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              'Find a doctor, medicine or health services',
              style: TextStyle(color: MColors.textThirtyColor, fontFamily: 'Khula', fontSize: 14),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 10),
          const Icon(Icons.tune, color: MColors.textThirtyColor, size: 20),
        ],
      ),
    );
  }
}

class HealthArticletile extends StatelessWidget {
  const HealthArticletile({super.key, required this.imageName, required this.label1, required this.label2});

  final String imageName, label1, label2;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 16,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(6),
            child: Image.asset(imageName.trim().toString(), width: 88, height: 88, fit: BoxFit.cover),
          ),
          // column
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                spacing: 9,
                children: [
                  Text(label1.toString(), style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor)),

                  Text(
                    label2.toString(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: MTextTheme.headlineSmall.copyWith(fontSize: 16, height: 1.2),
                  ),

                  Text(
                    '11-jun-2023',
                    style: MTextTheme.bodySmall.copyWith(fontSize: 10, color: MColors.textSecondaryColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NearbyHospitalSection extends StatelessWidget {
  const NearbyHospitalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: [
          NearbyHospitalCard(label: 'Cipto\nMangunkusumo\nHospital (RSCM)', imageName: 'assets/images/rscm.png'),
          SizedBox(width: 16),

          NearbyHospitalCard(label: 'Mitra\nHospital', imageName: 'assets/images/mitra_keluarga.png'),
          SizedBox(width: 16),

          NearbyHospitalCard(label: 'Mayapada\nHospital', imageName: 'assets/images/mayapada.png'),
          SizedBox(width: 16),

          NearbyHospitalCard(label: 'Cipto\nMangunkusumo\nHospital (RSCM)', imageName: 'assets/images/rscm.png'),
          SizedBox(width: 16),
        ],
      ),
    );
  }
}

class NearbyHospitalCard extends StatelessWidget {
  const NearbyHospitalCard({super.key, required this.label, required this.imageName});
  final String label, imageName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: MColors.thirtyColor, width: 1),
      ),
      child: Stack(
        clipBehavior: Clip.antiAlias,
        children: [
          Positioned(
            left: 116,
            top: -32,
            child: Container(
              width: 78,
              height: 78,
              decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0XFFFDF1F1)),
            ),
          ),
          Positioned(
            top: 14,
            left: 14,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 14,
              children: [
                Image.asset(imageName.trim().toString(), width: 61.96, height: 36, fit: BoxFit.cover),

                Text(label.toString(), style: MTextTheme.bodyLarge),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('See maps', style: MTextTheme.bodyMedium.copyWith(color: MColors.textThirtyColor)),
                    Image.asset('assets/icons/right_hand.png', width: 16, height: 16, color: MColors.textThirtyColor),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BestSellingProductSection extends StatelessWidget {
  const BestSellingProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 81,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          BestSellingTile(imageName: 'assets/images/vacine.png', name: 'Vaccine'),
          SizedBox(width: 16),
          BestSellingTile(imageName: 'assets/images/braces.png', name: 'braces'),
          SizedBox(width: 16),
          BestSellingTile(imageName: 'assets/images/whilechair.jpg', name: 'whilechair'),
          SizedBox(width: 16),
          BestSellingTile(imageName: 'assets/images/mask.jpg', name: 'mask'),
          SizedBox(width: 16),
          BestSellingTile(imageName: 'assets/images/vacine.png', name: 'Vaccine'),
          SizedBox(width: 16),
        ],
      ),
    );
  }
}

class BestSellingTile extends StatelessWidget {
  const BestSellingTile({super.key, required this.imageName, required this.name});
  final String imageName, name;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 81,
      height: 81,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        image: DecorationImage(image: AssetImage(imageName.trim()), fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color.fromARGB(59, 255, 255, 255), const Color.fromARGB(85, 0, 0, 0)],
                ),
              ),
            ),
          ),

          Positioned(left: 22, bottom: 13, child: Text(name, style: MTextTheme.labelLarge)),
        ],
      ),
    );
  }
}

class ChatDoctorSection extends StatelessWidget {
  const ChatDoctorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ChatDoctorTile(
            imagename: 'assets/images/image71.png',
            name: 'Dr. Leonard Campbell',
            type: 'Heart Specialist',
          ),
          SizedBox(width: 16),
          ChatDoctorTile(imagename: 'assets/images/image72.png', name: 'Dr. Leonard Campbell', type: 'Dentist'),
          SizedBox(width: 16),
          ChatDoctorTile(
            imagename: 'assets/images/image71.png',
            name: 'Dr. Leonard Campbell',
            type: 'Heart Specialist',
          ),
          SizedBox(width: 16),
          ChatDoctorTile(imagename: 'assets/images/image72.png', name: 'Dr. Leonard Campbell', type: 'Dentist'),
        ],

        // itemCount: 4,
      ),
    );
  }
}

class ChatDoctorTile extends StatelessWidget {
  const ChatDoctorTile({super.key, required this.imagename, required this.name, required this.type});
  final String imagename, name, type;
  // final String ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: MColors.thirtyColor, width: 1),
        image: DecorationImage(image: AssetImage(imagename.trim().toString()), fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color.fromARGB(59, 255, 255, 255), const Color.fromARGB(85, 0, 0, 0)],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 19,
            left: 22,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  name.toString(),
                  style: MTextTheme.headlineMedium.copyWith(fontSize: 12, color: MColors.whiteColor),
                ),
                Text(type.toString(), style: MTextTheme.bodyMedium.copyWith(color: MColors.thirtyColor)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ConsultationContainer extends StatelessWidget {
  const ConsultationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 24),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(width: 1, color: MColors.textThirtyColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Consultation with a specialist', style: MTextTheme.headlineMedium.copyWith(fontSize: 16)),
                Text('Promote health via chat or call', style: MTextTheme.labelMedium),
              ],
            ),
          ),

          IconButton(
            iconSize: 15,

            onPressed: () {},
            icon: Icon(Icons.arrow_forward_ios_rounded, color: Colors.black, weight: 10),
          ),
        ],
      ),
    );
  }
}

class DoctorCatogorySection extends StatelessWidget {
  const DoctorCatogorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 16,
      spacing: 16,
      children: [
        DoctorCategory(imagename: MImages.categoryImage1, label: 'All'),
        DoctorCategory(imagename: MImages.categoryImage2, label: 'General\nPractitioner'),
        DoctorCategory(imagename: MImages.categoryImage3, label: 'Dentistry'),

        DoctorCategory(imagename: MImages.categoryImage4, label: 'Gynecology'),

        DoctorCategory(imagename: MImages.categoryImage5, label: 'Ophthalmology'),
        DoctorCategory(imagename: MImages.categoryImage6, label: 'Neurology'),
        DoctorCategory(imagename: MImages.categoryImage7, label: 'Otorhinolaryng\nology'),
        DoctorCategory(imagename: MImages.categoryImage8, label: 'Pulmonologist'),
      ],
    );
  }
}

class DoctorCategory extends StatelessWidget {
  const DoctorCategory({super.key, required this.imagename, required this.label});

  final String imagename;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 81,
      height: 81, // ✅ stays exactly as Figma specifies
      padding: const EdgeInsets.fromLTRB(9, 9, 9, 9), // adjust to match your Figma padding exactly
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6), // Figma shows 6px radius
        boxShadow: [BoxShadow(color: Colors.black.withAlpha(125), blurRadius: 2)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagename.trim(),
            width: 24, // ✅ smaller icon, matches Figma proportions better than 36
            height: 24,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 4),
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown, // ✅ shrinks text to whatever fits, never overflows
              child: Text(
                label,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: MTextTheme.bodySmall.copyWith(color: MColors.primaryColor, fontSize: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EditProfileNow extends StatelessWidget {
  const EditProfileNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 210,
      decoration: BoxDecoration(gradient: LinearGradient(colors: [MColors.gradientColor1, MColors.gradientColor2])),
      child: Stack(
        clipBehavior: Clip.antiAlias,
        children: [
          Positioned(
            top: -115,
            left: -144,
            child: Container(
              width: 197,
              height: 197,
              decoration: BoxDecoration(
                color: MColors.circleColor.withAlpha(115),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          Positioned(
            top: -19,
            left: 317,
            child: Container(
              width: 197,
              height: 197,
              decoration: BoxDecoration(color: Colors.white.withAlpha(75), borderRadius: BorderRadius.circular(100)),
            ),
          ),

          Positioned(
            left: 26,
            top: 40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Experience Seamless \n Healthcare Management \n with MediConnect',
                  style: MTextTheme.headlineSmall.copyWith(height: 1.35, color: MColors.whiteColor),
                ),
                SizedBox(height: 26),
                Container(
                  width: 164,
                  height: 32,
                  color: MColors.primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Fill Your Profile Now! ', style: MTextTheme.bodyMedium),
                      Icon(Icons.arrow_forward_ios, color: MColors.whiteColor, size: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Align(alignment: Alignment.bottomRight, child: Image.asset('assets/images/do_img1.png')),
        ],
      ),
    );
  }
}
