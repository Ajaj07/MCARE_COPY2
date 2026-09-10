import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';
import '../../../../common/widgets/Buttons/primary_button.dart';
import '../../../../common/widgets/Buttons/secondary_button.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/theme/widget/text_theme_screen_util.dart';

/// without screen Util
/*
class DetailHospital extends StatefulWidget {
  const DetailHospital({super.key});

  @override
  State<DetailHospital> createState() => _DetailHospitalState();
}

class _DetailHospitalState extends State<DetailHospital> {
  final specialties = [
    SpecialtyItem(iconPath: 'assets/icons/specialits_1.png', label: 'General\nPractitioner'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_2.png', label: 'Dentistry'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_3.png', label: 'Gynecology'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_4.png', label: 'Ophthalmology'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_5.png', label: 'Neurology'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_6.png', label: 'Otorhinolaryngology'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_7.png', label: 'Psychiatrist'),
  ];
  SpecialtyItem? selectedSpecialty;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                // image name
                HospitalImage(),
                SizedBox(height: 20),
                // hospital Details
                DetailColumn(),
                SizedBox(height: 20),
                // divider
                Divider(color: Color(0XFFE3E3E3), thickness: 1),
                SizedBox(height: 20),

                // specialist
                Text('Specialties', style: MTextTheme.semiBold),
                SizedBox(height: 10),
                Wrap(
                  spacing: 16,
                  runSpacing: 23,
                  children: specialties
                      .map(
                        (item) => SpecialtyTile(
                          item: item,
                          isSelected: selectedSpecialty == item,
                          onTap: () => setState(() => selectedSpecialty = item),
                        ),
                      )
                      .toList(),
                ),
                SizedBox(height: 20),
                // Divider
                Divider(color: Color(0XFFE3E3E3), thickness: 1),
                SizedBox(height: 20),

                // types of room
                Text('Type Rooms', style: MTextTheme.semiBold),
                SizedBox(height: 10),
                RoomCard(
                  roomtype: 'General Ward ',
                  person: '(4 person per room)',
                  beds: 4,
                  availbeBeds: 10,
                  pricePerNight: '\$100-\$150',
                ),
                SizedBox(height: 10),
                //2
                RoomCard(
                  roomtype: 'Semi-Private Rooms ',
                  person: '(2 person per room)',
                  beds: 80,
                  availbeBeds: 30,
                  pricePerNight: '\$170-\$210',
                ),
                SizedBox(height: 10),
                //3
                RoomCard(roomtype: 'Private Rooms ', beds: 40, availbeBeds: 20, pricePerNight: '\$350-\$450'),
                SizedBox(height: 10),
                //4
                RoomCard(roomtype: 'Deluxe Suites ', beds: 12, availbeBeds: 0, pricePerNight: '\$600-\$1,000'),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: kBottomNavigationBarHeight,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              width: 105,
              child: MSButton2(
                label: 'Maps',
                buttonStyle: ButtonStyle(side: WidgetStatePropertyAll(BorderSide(color: MColors.primaryColor))),
              ),
            ),

            SizedBox(width: 10),
            Expanded(child: MPButton2(label: 'Contact Now')),
          ],
        ),
      ),
    );
  }
}

class RoomCard extends StatelessWidget {
  const RoomCard({
    super.key,
    required this.roomtype,
    this.person,
    required this.beds,
    required this.availbeBeds,
    required this.pricePerNight,
  });
  final String roomtype;
  final String? person;
  final int beds, availbeBeds;
  final String pricePerNight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: MColors.thirtyColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(roomtype, style: MTextTheme.semiBold.copyWith(fontSize: 16, color: MColors.primaryColor)),
              Text('$person', style: MTextTheme.labelMedium),
            ],
          ),

          SizedBox(height: 20),
          //total beds
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Total beds : ', style: MTextTheme.labelMedium),
              Text(beds.toString(), style: MTextTheme.bold.copyWith(fontSize: 14, color: MColors.textSecondaryColor)),
            ],
          ),
          SizedBox(height: 10),

          // ramaning availibility
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Remaining Availability ', style: MTextTheme.labelMedium),
              Text(
                '$availbeBeds beds',
                style: MTextTheme.bold.copyWith(fontSize: 14, color: MColors.textSecondaryColor),
              ),
            ],
          ),
          SizedBox(height: 10),
          // price per night
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Price per night:  ', style: MTextTheme.labelMedium),
              Text(pricePerNight, style: MTextTheme.bold.copyWith(fontSize: 14, color: MColors.textSecondaryColor)),
            ],
          ),
        ],
      ),
    );
  }
}

TextStyle labelStyle = TextStyle(fontWeight: FontWeight.w700, fontSize: 10, color: MColors.primaryColor);

class SpecialtyItem {
  final String iconPath;
  final String label;
  const SpecialtyItem({required this.iconPath, required this.label});
}

class SpecialtyTile extends StatelessWidget {
  const SpecialtyTile({super.key, required this.item, this.isSelected = false, this.onTap});

  final SpecialtyItem item;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 81,
        height: 81,
        padding: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          border: isSelected ? Border.all(color: MColors.primaryColor, width: 1.5) : null,
          boxShadow: [BoxShadow(color: const Color.fromARGB(96, 0, 0, 0), blurRadius: 5, offset: Offset(4, 4))],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center, // <- handles varying label length automatically
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(item.iconPath, width: 32, height: 32, fit: BoxFit.contain),
            SizedBox(height: 6),
            Flexible(
              child: Text(
                item.label,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: labelStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailColumn extends StatelessWidget {
  const DetailColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5,
      children: [
        Text('Ospedale San Raffaele', style: MTextTheme.semiBold, maxLines: 2, overflow: TextOverflow.ellipsis),
        Text(
          'Via Olgettina, 60, 20132 Milano MI, Italy',
          style: MTextTheme.labelLarge.copyWith(fontWeight: FontWeight.w400, color: MColors.textSecondaryColor),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/icons/svg/call.svg',
              height: 14,
              width: 14,
              fit: BoxFit.fill,
              colorFilter: const ColorFilter.mode(MColors.primaryColor, BlendMode.srcIn),
            ),
            SizedBox(width: 4),
            Flexible(
              child: Text(
                '(+22) 2361 6257 1726',
                style: MTextTheme.labelLarge.copyWith(fontWeight: FontWeight.w600, color: MColors.primaryColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class HospitalImage extends StatelessWidget {
  const HospitalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 256,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: MColors.thirtyColor),
      child: Image.asset('assets/images/hospital_list/image_1.png', fit: BoxFit.fill),
    );
  }
}
*/

/// with screen util
class DetailHospital extends StatefulWidget {
  const DetailHospital({super.key});

  @override
  State<DetailHospital> createState() => _DetailHospitalState();
}

class _DetailHospitalState extends State<DetailHospital> {
  final specialties = [
    SpecialtyItem(iconPath: 'assets/icons/specialits_1.png', label: 'General\nPractitioner'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_2.png', label: 'Dentistry'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_3.png', label: 'Gynecology'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_4.png', label: 'Ophthalmology'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_5.png', label: 'Neurology'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_6.png', label: 'Otorhinolaryngology'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_7.png', label: 'Psychiatrist'),
  ];
  SpecialtyItem? selectedSpecialty;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                // image name
                HospitalImage(),
                SizedBox(height: 20.h),
                // hospital Details
                DetailColumn(),
                SizedBox(height: 20.h),
                // divider
                Divider(color: Color(0XFFE3E3E3), thickness: 1),
                SizedBox(height: 20.h),

                // specialist
                Text('Specialties', style: MTextTheme.semiBold),
                SizedBox(height: 10.h),
                Wrap(
                  spacing: 16.w,
                  runSpacing: 23.h,
                  children: specialties
                      .map(
                        (item) => SpecialtyTile(
                          item: item,
                          isSelected: selectedSpecialty == item,
                          onTap: () => setState(() => selectedSpecialty = item),
                        ),
                      )
                      .toList(),
                ),
                SizedBox(height: 20.h),
                // Divider
                Divider(color: Color(0XFFE3E3E3), thickness: 1),
                SizedBox(height: 20.h),

                // types of room
                Text('Type Rooms', style: MTextTheme.semiBold),
                SizedBox(height: 10.h),
                RoomCard(
                  roomType: 'General Ward ',
                  roomCapacity: '(4 person per room)',
                  totalBeds: 4,
                  availableBeds: 10,
                  pricePerNight: '\$100-\$150',
                ),
                SizedBox(height: 10.h),
                //2
                RoomCard(
                  roomType: 'Semi-Private Rooms ',
                  roomCapacity: '(2 person per room)',
                  totalBeds: 80,
                  availableBeds: 30,
                  pricePerNight: '\$170-\$210',
                ),
                SizedBox(height: 10.h),
                //3
                RoomCard(roomType: 'Private Rooms ', totalBeds: 40, availableBeds: 20, pricePerNight: '\$350-\$450'),
                SizedBox(height: 10.h),
                //4
                RoomCard(roomType: 'Deluxe Suites ', totalBeds: 12, availableBeds: 0, pricePerNight: '\$600-\$1,000'),
                SizedBox(height: 10.h),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: kBottomNavigationBarHeight,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 10.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              width: 105.w,
              child: MSButton2(
                label: 'Maps',
                buttonStyle: ButtonStyle(side: WidgetStatePropertyAll(BorderSide(color: MColors.primaryColor))),
              ),
            ),

            SizedBox(width: 10.w),
            Expanded(child: MPButton2(label: 'Contact Now')),
          ],
        ),
      ),
    );
  }
}

class RoomCard extends StatelessWidget {
  const RoomCard({
    super.key,
    required this.roomType,
    this.roomCapacity,
    required this.totalBeds,
    required this.availableBeds,
    required this.pricePerNight,
  });

  final String roomType;
  final String? roomCapacity;
  final int totalBeds;
  final int availableBeds;
  final String pricePerNight;

  @override
  Widget build(BuildContext context) {
    final valueStyle = MTextTheme.bold.copyWith(fontSize: 14.sp, color: MColors.textSecondaryColor);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(width: 1.r, color: MColors.thirtyColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Header
          Wrap(
            spacing: 6.w,
            runSpacing: 4.h,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                roomType,
                style: MTextTheme.semiBold.copyWith(fontSize: 16.sp, color: MColors.primaryColor),
              ),

              if (roomCapacity != null && roomCapacity!.trim().isNotEmpty)
                Text(roomCapacity!, style: MTextTheme.labelMedium),
            ],
          ),

          SizedBox(height: 20.h),

          _InfoRow(title: 'Total beds', value: totalBeds.toString(), valueStyle: valueStyle),

          SizedBox(height: 10.h),

          _InfoRow(title: 'Remaining Availability', value: '$availableBeds beds', valueStyle: valueStyle),

          SizedBox(height: 10.h),

          _InfoRow(title: 'Price per night', value: pricePerNight, valueStyle: valueStyle),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.title, required this.value, required this.valueStyle});

  final String title;
  final String value;
  final TextStyle valueStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('$title :', style: MTextTheme.labelMedium),
        SizedBox(width: 12.w),
        Text(value, style: valueStyle, textAlign: TextAlign.end, softWrap: true, overflow: TextOverflow.visible),
      ],
    );
  }
}

TextStyle labelStyle = TextStyle(fontWeight: FontWeight.w700, fontSize: 10, color: MColors.primaryColor);

class SpecialtyItem {
  final String iconPath;
  final String label;
  const SpecialtyItem({required this.iconPath, required this.label});
}

class SpecialtyTile extends StatelessWidget {
  const SpecialtyTile({super.key, required this.item, this.isSelected = false, this.onTap});

  final SpecialtyItem item;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 81.w,
        height: 81.h,
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.r),
          border: isSelected ? Border.all(color: MColors.primaryColor, width: 1.5.r) : null,
          boxShadow: [BoxShadow(color: const Color.fromARGB(96, 0, 0, 0), blurRadius: 5.r, offset: Offset(4.w, 4.h))],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center, // <- handles varying label length automatically
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(item.iconPath, width: 32.w, height: 32.h, fit: BoxFit.contain),
            SizedBox(height: 6.h),
            Flexible(
              child: Text(
                item.label,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: labelStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailColumn extends StatelessWidget {
  const DetailColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5,
      children: [
        Text('Ospedale San Raffaele', style: MTextTheme.semiBold, maxLines: 2, overflow: TextOverflow.ellipsis),
        Text(
          'Via Olgettina, 60, 20132 Milano MI, Italy',
          style: MTextTheme.labelLarge.copyWith(fontWeight: FontWeight.w400, color: MColors.textSecondaryColor),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/icons/svg/call.svg',
              height: 14.h,
              width: 14.w,
              fit: BoxFit.fill,
              colorFilter: const ColorFilter.mode(MColors.primaryColor, BlendMode.srcIn),
            ),
            SizedBox(width: 4),
            Flexible(
              child: Text(
                '(+22) 2361 6257 1726',
                style: MTextTheme.labelLarge.copyWith(fontWeight: FontWeight.w600, color: MColors.primaryColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class HospitalImage extends StatelessWidget {
  const HospitalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 256.h,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(6.r), color: MColors.thirtyColor),
      child: Image.asset('assets/images/hospital_list/image_1.png', fit: BoxFit.fill),
    );
  }
}
