import 'package:flutter/material.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

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
          onPressed: () {},
          icon: Image.asset('assets/icons/back_arrow.png', width: 24, height: 24, fit: BoxFit.cover),
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

class DoctorSearchField extends StatelessWidget {
  const DoctorSearchField({super.key, this.controller, this.onChanged});

  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: const Color(0xFFF9F9F9),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: MColors.thirtyColor, width: 1),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        style: const TextStyle(fontSize: 15, color: Colors.black87),
        decoration: const InputDecoration(
          isDense: true,
          border: InputBorder.none,
          hintText: 'Find a doctor',
          hintStyle: TextStyle(color: MColors.textThirtyColor, fontSize: 14, fontFamily: 'Khula'),
          prefixIcon: Icon(Icons.search, color: MColors.textThirtyColor, size: 22),
          contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        ),
      ),
    );
  }
}

class ChatTile extends StatelessWidget {
  const ChatTile({
    super.key,
    required this.image,
    required this.name,
    required this.desiganation,
    required this.experiance,
    required this.avaialbe,
  });
  final String image, name, desiganation, avaialbe;
  final int experiance;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          /// profile image
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(image.toString(), width: 64, height: 64, fit: BoxFit.fill),
          ),

          SizedBox(width: 16),
          Expanded(
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              // spacing: 10,
              children: [
                // name
                Text(name.toString(), style: MTextTheme.semiBold),
                // Desiganation
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${desiganation.toString()} \t',
                      style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor),
                    ),

                    Icon(Icons.circle, size: 5, color: MColors.textSecondaryColor),

                    Text(
                      ' ${experiance.toString()} Years',
                      style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor),
                    ),
                  ],
                ),
                // availablity
                Container(
                  decoration: BoxDecoration(color: Color(0XFFDCFFDD), borderRadius: BorderRadius.circular(4)),
                  padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                  child: Text(
                    'Available on  ${avaialbe.toString()}',
                    style: MTextTheme.regular.copyWith(fontSize: 10, color: MColors.textSecondaryColor),
                  ),
                ),
              ],
            ),
          ),

          /// right side arrow
          IconButton(
            onPressed: () {},
            icon: ImageIcon(AssetImage('assets/icons/right_hand.png'), color: MColors.textSecondaryColor),
          ),
        ],
      ),
    );
  }
}
