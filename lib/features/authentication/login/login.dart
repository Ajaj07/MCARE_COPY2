import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/common/widgets/Buttons/primary_button.dart';
import 'package:mcare_copy2/features/authentication/login/verification_success.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 2,
        child: Padding(
          padding: EdgeInsets.only(top: 60.h, right: 28.w, left: 28.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              /// Back button
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/back_arrow.png',
                  width: 24.w,
                  height: 24.h,
                ),
              ),
              SizedBox(height: 32.h),

              /// Header Text
              Text(
                'Enter your phone number or email',
                style: TextStyle(
                  fontFamily: 'Khula',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: MColors.textColor,
                ),
              ),
              SizedBox(height: 44.h),

              /// Tab Bar
              TabBar(
                indicatorColor: MColors.primaryColor,
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: MColors.secondaryColor,
                dividerHeight: 2.h,
                labelStyle: TextStyle(
                  fontFamily: 'Khula',
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  color: MColors.primaryColor,
                ),
                unselectedLabelStyle: TextStyle(
                  fontFamily: 'Khula',
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: MColors.secondaryColor,
                ),
                tabs: const [
                  Tab(text: "No Phone"),
                  Tab(text: "Email"),
                ],
              ),

              /// Tab Bar View
              Expanded(
                child: TabBarView(
                  children: const [
                    /// for Mobile
                    Mobile(),

                    /// for email
                    Email(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Email extends StatelessWidget {
  const Email({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 26.h),
        // Text
        LabelText(label: 'Email '),
        SizedBox(height: 12.h),
        // TextField
        Container(
          width: double.infinity,
          height: 44.h,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(6.r),
            border: Border.all(color: MColors.secondaryColor),
          ),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              hintText: 'Enter your email',
              hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
              contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              isDense: true,
            ),
            style: TextStyle(fontSize: 14.sp),
          ),
        ),

        ///  issue Text
        SizedBox(height: 26.h),
        LabelText2(label: 'Is there an issue with your email?'),

        const Spacer(),

        /// Login Button Column
        Padding(
          padding: EdgeInsets.only(bottom: 70.h),
          child: Column(
            children: [
              /// Primary Button
              MPButton(
                label: 'Login',
                pressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VerificationSuccess(),
                    ),
                  );
                },
              ),
              SizedBox(height: 16.h),

              /// Signup text
              Text.rich(
                style: TextStyle(
                  fontFamily: 'Khula',
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: MColors.textSecondaryColor,
                ),
                TextSpan(
                  text: "Don't have a MedCare account yet? ",
                  children: [
                    TextSpan(
                      style: TextStyle(color: MColors.primaryColor),
                      text: 'Sign up',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Mobile extends StatelessWidget {
  const Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 26.h),
        // label Text
        LabelText(label: 'No Phone'),
        SizedBox(height: 12.h),
        // TextField
        Container(
          width: double.infinity,
          height: 44.h,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(6.r),
            border: Border.all(color: MColors.secondaryColor),
          ),
          child: Row(
            children: [
              // Left Section: Dropdown Selector
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: null,
                    hint: Row(
                      children: [
                        Text(
                          'Pilih',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14.sp,
                          ),
                        ),
                        SizedBox(width: 4.w),
                      ],
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black54,
                      size: 18.sp,
                    ),
                    items: const [],
                    onChanged: (value) {
                      // Handle country selection
                    },
                  ),
                ),
              ),

              // Middle Section: Vertical Divider Line
              Container(
                width: 1.w,
                height: 24.h,
                color: MColors.secondaryColor,
              ),

              // Right Section: Phone Number Input Field
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.phone,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    hintText: 'Enter phone number',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14.sp,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 10.h,
                    ),
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    isDense: true,
                  ),
                  style: TextStyle(fontSize: 14.sp),
                ),
              ),
            ],
          ),
        ),

        /// issue Text
        SizedBox(height: 26.h),
        LabelText2(label: 'Is there an issue with your phone number?'),

        const Spacer(),

        /// Login Button Column
        Padding(
          padding: EdgeInsets.only(bottom: 70.h),
          child: Column(
            children: [
              /// Primary Button
              MPButton(
                label: 'Login',
                pressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VerificationSuccess(),
                    ),
                  );
                },
              ),
              SizedBox(height: 16.h),

              /// Signup text
              Text.rich(
                style: TextStyle(
                  fontFamily: 'Khula',
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: MColors.textSecondaryColor,
                ),
                TextSpan(
                  text: "Don't have a MedCare account yet? ",
                  children: [
                    TextSpan(
                      style: TextStyle(color: MColors.primaryColor),
                      text: 'Sign up',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class LabelText2 extends StatelessWidget {
  final String label;
  const LabelText2({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontFamily: 'Khula',
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
        color: MColors.primaryColor,
      ),
    );
  }
}

class LabelText extends StatelessWidget {
  final String label;
  const LabelText({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontFamily: 'Khula',
        fontWeight: FontWeight.w600,
        fontSize: 16.sp,
        color: MColors.primaryColor,
      ),
    );
  }
}



// body: DefaultTabController(
//         length: 3,
//         child: Column(
//           children: [
//             Container(
//               width: double.infinity - 20,
//               height: 150,
//               color: Colors.amberAccent,
//             ),
//             TextField(decoration: InputDecoration(hintText: "From tab bar")),
//             TabBar(
//               indicatorSize: TabBarIndicatorSize.tab,
//               indicatorColor: MColors.primaryColor,
//               tabs: [
//                 Tab(text: "Tab-1"),
//                 Tab(text: "Tab-2"),
//                 Tab(text: "Tab-3"),
//               ],
//             ),
//             Expanded(
//               child: TabBarView(
//                 children: [
//                   Container(
//                     margin: EdgeInsets.all(8),
//                     width: double.infinity,
//                     color: Colors.red.withAlpha(150),
//                     child: Center(child: Text("Tab-1")),
//                   ),
//                   Container(
//                     margin: EdgeInsets.all(8),
//                     width: double.infinity,
//                     color: Colors.yellowAccent.withAlpha(150),
//                     child: Center(child: Text("Tab-2")),
//                   ),
//                   Container(
//                     margin: EdgeInsets.all(8),
//                     width: double.infinity,
//                     color: Colors.greenAccent.withAlpha(150),
//                     child: Center(child: Text("Tab-3")),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),