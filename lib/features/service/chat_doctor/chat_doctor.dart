import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';
import 'widgets/chat_tile.dart';

///----------------------[WithOut Screen Util]-----------------------
/*
class ChatDoctor extends StatelessWidget {
  const ChatDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: () => Get.back(),
          icon: Icon(Icons.chevron_left, color: MColors.iconColor1),
        ),
        centerTitle: false,
        title: Text('Chat Doctor', style: MTextTheme.regular),
        // give padding if needed that is 15px
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
        child: Column(
          children: [
            DoctorSearchField(),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  ChatTile(
                    image: 'assets/images/chat/luci.png',
                    name: 'Dr. Luca Rossi',
                    desiganation: 'Cardiology Specialist',
                    experiance: 3,
                    avaialbe: 'Wed-Sat',
                  ),
                  SizedBox(height: 28),
                  ChatTile(
                    image: 'assets/images/chat/macro.png',
                    name: 'Dr. Marco ferrari',
                    desiganation: 'Orthopedics Speacialist',
                    experiance: 3,
                    avaialbe: 'Wed-Tue',
                  ),
                  SizedBox(height: 28),
                  ChatTile(
                    image: 'assets/images/chat/sofia.png',
                    name: 'Dr. Sofia Muller',
                    desiganation: 'Dermetology Speacialist',
                    experiance: 6,
                    avaialbe: 'Wed-Sat',
                  ),
                  SizedBox(height: 28),

                  ChatTile(
                    image: 'assets/images/chat/rajesh.png',
                    name: 'Dr. Rajesh Patel',
                    desiganation: 'General surgury',
                    experiance: 2,
                    avaialbe: 'Wed-Tue',
                  ),
                  SizedBox(height: 28),

                  ChatTile(
                    image: 'assets/images/chat/anna.png',
                    name: 'Dr. Anna Schmidt',
                    desiganation: 'General  Practitioner',
                    experiance: 10,
                    avaialbe: 'Wed-Sat',
                  ),
                  SizedBox(height: 28),

                  ChatTile(
                    image: 'assets/images/chat/emma.png',
                    name: 'Dr. Emma Andersen',
                    desiganation: 'Specialisis Neurologist',
                    experiance: 4,
                    avaialbe: 'Wed-Sat',
                  ),
                  SizedBox(height: 28),

                  ChatTile(
                    image: 'assets/images/chat/fabian.png',
                    name: 'Dr. Fabian Weber',
                    desiganation: 'General Surgury',
                    experiance: 6,
                    avaialbe: 'Wed-Sat',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/

///----------------------[With Scren Util]----------------------------
class ChatDoctor extends StatelessWidget {
  const ChatDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    // Structural data list for doctors to keep code clean and maintainable
    final List<Map<String, dynamic>> doctors = [
      {
        'image': 'assets/images/chat/luci.png',
        'name': 'Dr. Luca Rossi',
        'designation': 'Cardiology Specialist',
        'experience': 3,
        'available': 'Wed-Sat',
      },
      {
        'image': 'assets/images/chat/macro.png',
        'name': 'Dr. Marco ferrari',
        'designation': 'Orthopedics Speacialist',
        'experience': 3,
        'available': 'Wed-Tue',
      },
      {
        'image': 'assets/images/chat/sofia.png',
        'name': 'Dr. Sofia Muller',
        'designation': 'Dermetology Speacialist',
        'experience': 6,
        'available': 'Wed-Sat',
      },
      {
        'image': 'assets/images/chat/rajesh.png',
        'name': 'Dr. Rajesh Patel',
        'designation': 'General surgury',
        'experience': 2,
        'available': 'Wed-Tue',
      },
      {
        'image': 'assets/images/chat/anna.png',
        'name': 'Dr. Anna Schmidt',
        'designation': 'General Practitioner',
        'experience': 10,
        'available': 'Wed-Sat',
      },
      {
        'image': 'assets/images/chat/emma.png',
        'name': 'Dr. Emma Andersen',
        'designation': 'Specialisis Neurologist',
        'experience': 4,
        'available': 'Wed-Sat',
      },
      {
        'image': 'assets/images/chat/fabian.png',
        'name': 'Dr. Fabian Weber',
        'designation': 'General Surgury',
        'experience': 6,
        'available': 'Wed-Sat',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: () => Get.back(),
          icon: Icon(Icons.chevron_left, color: MColors.iconColor1),
        ),
        centerTitle: false,
        title: Text('Chat Doctor', style: MTextTheme.regular),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 24.h),
        child: Column(
          children: [
            const DoctorSearchField(),
            SizedBox(height: 20.h),
            Expanded(
              child: ListView.separated(
                itemCount: doctors.length,
                separatorBuilder: (context, index) => SizedBox(height: 28.h),
                itemBuilder: (context, index) {
                  final doctor = doctors[index];
                  return ChatTile(
                    image: doctor['image'],
                    name: doctor['name'],
                    designation: doctor['designation'],
                    experience: doctor['experience'],
                    available: doctor['available'],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorSearchField extends StatelessWidget {
  const DoctorSearchField({super.key, this.controller, this.onChanged});

  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        color: const Color(0xFFF9F9F9),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: MColors.thirtyColor, width: 1),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        style: TextStyle(fontSize: 15.sp, color: Colors.black87),
        decoration: InputDecoration(
          isDense: true,
          border: InputBorder.none,
          hintText: 'Find a doctor',
          hintStyle: TextStyle(color: MColors.textThirtyColor, fontSize: 14.sp, fontFamily: 'Khula'),
          prefixIcon: Icon(Icons.search, color: MColors.textThirtyColor, size: 22.sp),
          contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        ),
      ),
    );
  }
}
