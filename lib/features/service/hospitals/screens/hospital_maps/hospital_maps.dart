// or standard material.dart
// ... your imports

import 'package:flutter/material.dart';

import '../../widgets/hospital_detail_card.dart';

class HospitalMaps extends StatelessWidget {
  const HospitalMaps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/images/hospital_list/hospital_map.png'),
            fit: BoxFit.cover, // Changed from contain to cover for full screen
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 30, // Adjusted padding from bottom edge
              left: 20,
              right: 20,
              child: HospitalDetailCard(
                imageName: 'assets/images/hospital_list/image_1.png',
                title: 'Ospedale San Raffaele',
                subTitle: 'Via Olgettina, 60, 20132 Milano MI, Italy',
                moNo: '(+22) 2361 6257 1726',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
