import 'package:flutter/material.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

class Service extends StatelessWidget {
  const Service({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(onPressed: () {}, icon: Image.asset('assets/icons/back_arrow.png')),
        title: Text('Services', style: MTextTheme.headlineMedium.copyWith(fontSize: 16)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 28, right: 28, top: 30),
        child: Wrap(
          // direction: Axis.horizontal,
          // textDirection: TextDirection.ltr,
          crossAxisAlignment: WrapCrossAlignment.start,
          spacing: 16,
          runSpacing: 23,
          children: [
            /// 1
            Container(
              width: 81,
              height: 81,
              decoration: BoxDecoration(
                // color: Colors.transparent,
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [BoxShadow(color: const Color.fromARGB(96, 0, 0, 0), blurRadius: 5, offset: Offset(4, 4))],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 9.5, left: 18.5, right: 18.5, bottom: 6),
                    child: Image.asset(
                      'assets/images/specialist/service_specialits.png',
                      width: 44,
                      height: 44,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Flexible(child: Text('Chat Doctor', style: labelStyle)),
                ],
              ),
            ),

            /// 2
            Container(
              width: 81,
              height: 81,
              decoration: BoxDecoration(
                // color: Colors.transparent,
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [BoxShadow(color: const Color.fromARGB(96, 0, 0, 0), blurRadius: 5, offset: Offset(4, 4))],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 9.5, left: 18.5, right: 18.5, bottom: 6),
                    child: Image.asset(
                      'assets/images/specialist/service_specialits_1.png',
                      width: 44,
                      height: 44,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Flexible(child: Text('Hospitals', style: labelStyle)),
                ],
              ),
            ),

            ///3
            Container(
              width: 81,
              height: 81,
              decoration: BoxDecoration(
                // color: Colors.transparent,
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [BoxShadow(color: const Color.fromARGB(96, 0, 0, 0), blurRadius: 5, offset: Offset(4, 4))],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5.29, left: 18.5, right: 18.5, bottom: 6),
                    child: Image.asset(
                      'assets/images/specialist/service_specialits_2.png',
                      width: 35.58,
                      height: 34.79,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Flexible(
                    child: Text('Emergancy\nServices', textAlign: TextAlign.center, style: labelStyle),
                  ),
                ],
              ),
            ),

            /// 4
            Container(
              width: 81,
              height: 81,
              decoration: BoxDecoration(
                // color: Colors.transparent,
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [BoxShadow(color: const Color.fromARGB(96, 0, 0, 0), blurRadius: 5, offset: Offset(4, 4))],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 9.5, left: 18.5, right: 18.5, bottom: 6),
                    child: Image.asset(
                      'assets/images/specialist/service_specialits_3.png',
                      width: 44,
                      height: 44,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Flexible(child: Text('Articel', style: labelStyle)),
                ],
              ),
            ),

            ///5
            Container(
              width: 81,
              height: 81,
              decoration: BoxDecoration(
                // color: Colors.transparent,
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [BoxShadow(color: const Color.fromARGB(96, 0, 0, 0), blurRadius: 5, offset: Offset(4, 4))],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5.29, left: 18.5, right: 18.5, bottom: 6),
                    child: Image.asset(
                      'assets/images/specialist/service_specialits_4.png',
                      width: 35.58,
                      height: 34.79,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Flexible(
                    child: Text('Medication\nRemainder', textAlign: TextAlign.center, style: labelStyle),
                  ),
                ],
              ),
            ),

            ///6
            Container(
              width: 81,
              height: 81,
              decoration: BoxDecoration(
                // color: Colors.transparent,
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [BoxShadow(color: const Color.fromARGB(96, 0, 0, 0), blurRadius: 5, offset: Offset(4, 4))],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 9.5, left: 18.5, right: 18.5, bottom: 6),
                    child: Image.asset(
                      'assets/images/specialist/service_specialits_5.png',
                      width: 44,
                      height: 44,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Flexible(child: Text('Specialization', style: labelStyle)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceItem extends StatelessWidget {
  final String iconPath;
  final String label;
  const ServiceItem({super.key, required this.iconPath, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90, // enough room for label to not overflow; tweak as needed
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 81,
            height: 81,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromRGBO(0, 0, 0, 0.05), // 5% opacity, matches your panel
                  offset: const Offset(4, 4),
                  blurRadius: 10,
                  spreadRadius: 0,
                ),
              ],
            ),
            padding: const EdgeInsets.all(18.5),
            child: Image.asset(iconPath, fit: BoxFit.contain),
          ),
          const SizedBox(height: 6), // your "Gap: 6px"
          Text(
            label,
            textAlign: TextAlign.center,
            style: labelStyle.copyWith(fontFamily: 'Khula'),
          ),
        ],
      ),
    );
  }
}

TextStyle labelStyle = TextStyle(fontWeight: FontWeight.w700, fontSize: 10, color: MColors.primaryColor);

Widget buttonContainer({required String data, Color color = Colors.blueAccent}) => Container(
  width: 150,
  height: 40,
  alignment: Alignment.center,
  decoration: BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(50),
    border: Border.all(width: 1, color: Colors.black),
  ),
  child: Text(data),
);
