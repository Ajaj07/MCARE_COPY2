import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../features/home/controller/home_screen_controller.dart';
import '../../../../utils/constants/colors.dart';

// Assuming you have your custom colors imported here
// import 'package:your_app/constants/colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  // Pass your GetX controller containing the selected index
  // final dynamic controller;

  // 1. Accept the HomeScreenController via constructor
  final HomeScreenController controller;

  const CustomBottomNavigationBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    // TODO: Replace this hardcoded index with your own state management variable (e.g., _selectedIndex)
    // const int selectedIndex = 1;

    return NavigationBarTheme(
      data: NavigationBarThemeData(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,

        // Kept exactly as requested (using original text styles)
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
        indicatorColor: Colors.transparent, // Removes the default pill shape indicator
      ),
      child: Obx(() {
        final selectedIndex = controller.bottom_nav_selected_index.value;
        return NavigationBar(
          selectedIndex: selectedIndex,
          onDestinationSelected: (index) {
            // 3. Update the GetX controller's state when an item is tapped
            controller.bottom_nav_selected_index.value = index;
          },
          destinations: [
            // ---------------- Home (Index 0) ----------------
            NavigationDestination(
              icon: SvgPicture.asset(
                selectedIndex == 0
                    ? 'assets/icons/svg/nav_bar/home_bold.svg' // Selected SVG
                    : 'assets/icons/svg/nav_bar/home.svg', // Unselected SVG
              ),
              label: 'Home',
            ),

            // ---------------- Services (Index 1) ----------------
            NavigationDestination(
              icon: SvgPicture.asset(
                selectedIndex == 1
                    ? 'assets/icons/svg/nav_bar/services_bold.svg' // TODO: Verify/Replace selected SVG path
                    : 'assets/icons/svg/nav_bar/services.svg', // TODO: Verify/Replace unselected SVG path
              ),
              label: 'Services',
            ),

            // ---------------- History (Index 2) ----------------
            NavigationDestination(
              icon: SvgPicture.asset(
                selectedIndex == 2
                    ? 'assets/icons/svg/nav_bar/history_bold.svg' // TODO: Verify/Replace selected SVG path
                    : 'assets/icons/svg/nav_bar/history.svg', // TODO: Verify/Replace unselected SVG path
              ),
              label: 'History',
            ),

            // ---------------- Profile (Index 3) ----------------
            NavigationDestination(
              icon: SvgPicture.asset(
                selectedIndex == 3
                    ? 'assets/icons/svg/nav_bar/profile_bold.svg' // TODO: Verify/Replace selected SVG path
                    : 'assets/icons/svg/nav_bar/profile.svg', // TODO: Verify/Replace unselected SVG path
              ),
              label: 'Profile',
            ),
          ],
        );
      }),
    );
  }
}
