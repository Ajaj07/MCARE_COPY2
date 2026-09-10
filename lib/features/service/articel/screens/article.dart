import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/common/widgets/Buttons/secondary_button.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';

import '../../../../utils/theme/widget/text_theme_screen_util.dart';
// import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

///-------------------[without Screen Util ] --------------------------
/*
class Article extends StatelessWidget {
  Article({super.key});

  TextStyle comanTextStyle = MTextTheme.labelMedium.copyWith(height: 1.5);

  final String title = 'Getting to know Hanta Virus Disease from Rodents';
  final String author = 'Written by Lonard on January 10, 2024';
  final List<String> content = [
    'Title: Understanding Hanta Virus Disease: Risks, Symptoms, and Prevention Measures from Rodents',
    'Introduction:\nHanta virus disease, transmitted primarily through contact with rodent urine, droppings, or saliva, poses a significant health threat to humans worldwide. This article aims to provide an overview of Hanta virus disease, its potential risks, common symptoms, and essential prevention measures.',
    'What is Hanta Virus Disease?\nHanta virus disease is a rare but potentially deadly viral infection caused by several strains of hantaviruses. These viruses are typically carried by rodents, such as mice, rats, and voles, and can be transmitted to humans through inhalation of airborne particles contaminated with rodent excreta.',
    'Understanding the Risks:\nIndividuals who live or work in areas with high rodent populations, such as rural or semi-rural environments, are at an increased risk of contracting Hanta virus disease. Activities that involve disturbing rodent habitats, such as cleaning barns, sheds, or attics, can also elevate the risk of exposure.',
    'Common Symptoms:\nThe symptoms of Hanta virus disease can vary widely but often include flu-like symptoms such as fever, muscle aches, headaches, and fatigue. As the disease progresses, individuals may experience respiratory symptoms such as coughing and shortness of breath, which can rapidly escalate to severe respiratory distress and potentially fatal complications.',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios, size: 20),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26, vertical: 20),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///--------------------[Title]-------------------
                Text(title, style: MTextTheme.semiBold.copyWith(fontSize: 20, height: 1.5)),
                SizedBox(height: 20),
                Text(author, style: MTextTheme.bodyMedium.copyWith(color: MColors.textThirtyColor)),

                SizedBox(height: 10),

                ///----------------------[Disease Picture]---------------------------------
                Container(
                  width: 372,
                  height: 180,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 1, color: MColors.thirtyColor),
                    color: Colors.white38,
                  ),
                  child: Image.asset(
                    'assets/images/articel/article_list/virus.png',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                ///----------------------[Detail Description]---------------------------------
                SizedBox(height: 20),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // title text
                    Text(content[0], style: comanTextStyle),

                    SizedBox(height: 15),
                    Text(content[1], style: comanTextStyle),
                    SizedBox(height: 15),
                    Text(content[2], style: comanTextStyle),

                    SizedBox(height: 15),
                    Text(content[3], style: comanTextStyle),
                    SizedBox(height: 15),
                    Text(content[4], style: comanTextStyle),
                  ],
                ),
                SizedBox(height: 25),

                ///----------------------[Bottom part]---------------------------------
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start, // keep 'Tag:' aligned to first line
                  children: [
                    Text('Tag:', style: MTextTheme.labelMedium.copyWith(height: 1.5)),
                    SizedBox(width: 7),
                    Expanded(
                      child: Wrap(
                        spacing: 10, // horizontal gap between tags
                        runSpacing: 10, // vertical gap between wrapped rows
                        children: [
                          MSButton2(label: 'Content-healthy'),
                          MSButton2(label: 'Healthcare'),
                          MSButton2(label: 'health-environment'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
*/

///-------------------[with Screen Util ] --------------------------
class Article extends StatelessWidget {
  Article({super.key});

  TextStyle comanTextStyle = MTextTheme.labelMedium.copyWith(height: 1.5);

  final String title = 'Getting to know Hanta Virus Disease from Rodents';
  final String author = 'Written by Lonard on January 10, 2024';
  final List<String> content = [
    'Title: Understanding Hanta Virus Disease: Risks, Symptoms, and Prevention Measures from Rodents',
    'Introduction:\nHanta virus disease, transmitted primarily through contact with rodent urine, droppings, or saliva, poses a significant health threat to humans worldwide. This article aims to provide an overview of Hanta virus disease, its potential risks, common symptoms, and essential prevention measures.',
    'What is Hanta Virus Disease?\nHanta virus disease is a rare but potentially deadly viral infection caused by several strains of hantaviruses. These viruses are typically carried by rodents, such as mice, rats, and voles, and can be transmitted to humans through inhalation of airborne particles contaminated with rodent excreta.',
    'Understanding the Risks:\nIndividuals who live or work in areas with high rodent populations, such as rural or semi-rural environments, are at an increased risk of contracting Hanta virus disease. Activities that involve disturbing rodent habitats, such as cleaning barns, sheds, or attics, can also elevate the risk of exposure.',
    'Common Symptoms:\nThe symptoms of Hanta virus disease can vary widely but often include flu-like symptoms such as fever, muscle aches, headaches, and fatigue. As the disease progresses, individuals may experience respiratory symptoms such as coughing and shortness of breath, which can rapidly escalate to severe respiratory distress and potentially fatal complications.',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios, size: 20.w),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 20.h),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///--------------------[Title]-------------------
                Text(title, style: MTextTheme.semiBold.copyWith(fontSize: 20.sp, height: 1.5)),
                SizedBox(height: 20.h),
                Text(author, style: MTextTheme.bodyMedium.copyWith(color: MColors.textThirtyColor)),

                SizedBox(height: 10.h),

                ///----------------------[Disease Picture]---------------------------------
                Container(
                  width: 372.w,
                  height: 180.w,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(width: 1.w, color: MColors.thirtyColor),
                    color: Colors.white38,
                  ),
                  child: Image.asset(
                    'assets/images/articel/article_list/virus.png',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                ///----------------------[Detail Description]---------------------------------
                SizedBox(height: 20.h),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // title text
                    Text(content[0], style: comanTextStyle),

                    SizedBox(height: 15.h),
                    Text(content[1], style: comanTextStyle),
                    SizedBox(height: 15.h),
                    Text(content[2], style: comanTextStyle),

                    SizedBox(height: 15.h),
                    Text(content[3], style: comanTextStyle),
                    SizedBox(height: 15.h),
                    Text(content[4], style: comanTextStyle),
                  ],
                ),
                SizedBox(height: 25.h),

                ///----------------------[Bottom part]---------------------------------
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start, // keep 'Tag:' aligned to first line
                  children: [
                    Text('Tag:', style: MTextTheme.labelMedium.copyWith(height: 1.5)),
                    SizedBox(width: 7.w),
                    Expanded(
                      child: Wrap(
                        spacing: 10.w, // horizontal gap between tags
                        runSpacing: 10.h, // vertical gap between wrapped rows
                        children: [
                          MSButton2(label: 'Content-healthy'),
                          MSButton2(label: 'Healthcare'),
                          MSButton2(label: 'health-environment'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
