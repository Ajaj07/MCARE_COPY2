import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/theme/widget/text_theme.dart';

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
