import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/notification/notification_row.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/theme/widget/text_theme.dart';
import '../../widgets/circle_profile.dart';
import '../../widgets/edu_and_lic_row.dart';
import '../appointment_Suceess/sucess_screen.dart';

class Conformation extends StatelessWidget {
  const Conformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(surfaceTintColor: Colors.transparent, title: Text('Conformation'), centerTitle: true),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(top: 20.h, left: 28.w, right: 28.w),
          child: Column(
            children: [
              /// profile Section
              ProfileContainer(),
              SizedBox(height: 25.h),

              /// Details Appointment Section
              DetailAppointment(),
              SizedBox(height: 25.h),

              /// notifications
              NotificationRow(),

              /// CheckIn Button Section
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(28.w, 16.h, 28.w, 28.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SwipeToCheckInButton(
                onCompleted: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Done')));
                  Get.to(const SucessScreen());
                },
              ),

              SizedBox(height: 16.h),

              Text('Swipe to check in', style: MTextTheme.labelMedium),
            ],
          ),
        ),
      ),
    );
  }
}

class SwipeToCheckInButton extends StatefulWidget {
  final VoidCallback onCompleted;
  final String label;
  final double? width;
  final double? height;
  final Color trackColor;
  final Color thumbColor;
  final Color labelColor;
  final Color arrowColor;

  const SwipeToCheckInButton({
    super.key,
    required this.onCompleted,
    this.label = 'Check In',
    this.width,
    this.height,
    this.trackColor = const Color(0xFF26408B),
    this.thumbColor = Colors.white,
    this.labelColor = Colors.white,
    this.arrowColor = const Color(0xFF26408B),
  });

  @override
  State<SwipeToCheckInButton> createState() => _SwipeToCheckInButtonState();
}

class _SwipeToCheckInButtonState extends State<SwipeToCheckInButton> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  double _dragExtent = 0; // current thumb offset (px)
  bool _completed = false;

  // Responsive defaults (ScreenUtil values aren't const, so they're
  // resolved here rather than as constructor defaults).
  double get _width => widget.width ?? 372.w;
  double get _height => widget.height ?? 51.h;
  double get _thumbPadding => 5.w; // gap between track edge & thumb

  double get _thumbSize => _height - _thumbPadding * 2;

  double get _maxDrag => _width - _thumbSize - _thumbPadding * 2;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 250));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onDragUpdate(DragUpdateDetails details) {
    if (_completed) return;
    setState(() {
      _dragExtent = (_dragExtent + details.delta.dx).clamp(0.0, _maxDrag);
    });
  }

  void _onDragEnd(DragEndDetails details) {
    if (_completed) return;

    final threshold = _maxDrag * 0.85;

    if (_dragExtent >= threshold) {
      // Snap to completed state
      _animateTo(
        _maxDrag,
        onDone: () {
          setState(() => _completed = true);
          widget.onCompleted();
        },
      );
    } else {
      // Snap back to start
      _animateTo(0);
    }
  }

  void _animateTo(double target, {VoidCallback? onDone}) {
    final animation = Tween<double>(
      begin: _dragExtent,
      end: target,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    void listener() {
      setState(() => _dragExtent = animation.value);
    }

    animation.addListener(listener);
    _controller
      ..reset()
      ..forward().whenComplete(() {
        animation.removeListener(listener);
        onDone?.call();
      });
  }

  @override
  Widget build(BuildContext context) {
    final progress = _maxDrag == 0 ? 0.0 : (_dragExtent / _maxDrag);
    final labelOpacity = (1 - progress * 1.6).clamp(0.0, 1.0);

    return Container(
      width: _width,
      height: _height,
      decoration: BoxDecoration(color: widget.trackColor, borderRadius: BorderRadius.circular(_height / 2)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Label
          Opacity(
            opacity: labelOpacity,
            child: Text(
              _completed ? 'Checked In' : widget.label,
              style: TextStyle(color: widget.labelColor, fontWeight: FontWeight.w600, fontSize: 16.sp),
            ),
          ),
          // Draggable thumb
          Positioned(
            left: _thumbPadding + _dragExtent,
            child: GestureDetector(
              onHorizontalDragUpdate: _onDragUpdate,
              onHorizontalDragEnd: _onDragEnd,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                width: _thumbSize,
                height: _thumbSize,
                decoration: BoxDecoration(
                  color: widget.thumbColor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(color: Colors.black.withOpacity(0.15), blurRadius: 4.r, offset: Offset(0, 2.h)),
                  ],
                ),
                child: Icon(
                  _completed ? Icons.check : Icons.arrow_forward_ios_rounded,
                  color: widget.arrowColor,
                  size: 20.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailAppointment extends StatelessWidget {
  const DetailAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding : EdgeInsets.
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
      width: double.infinity,
      // height: 229,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(width: 1.w, color: Color(0xFFE3E3E3)),
        boxShadow: [BoxShadow(color: Colors.black.withAlpha(120), offset: Offset(1.w, 1.h), blurRadius: 1.r)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Detail Appointment', style: MTextTheme.bold),
          SizedBox(height: 15.h),
          DottedLine(
            direction: Axis.horizontal,
            lineLength: double.infinity,
            lineThickness: 1.0,
            dashLength: 5.0,
            dashColor: Colors.grey,
            dashGapLength: 3.0,
          ),
          SizedBox(height: 15.h),
          Text('Date & Time ', style: MTextTheme.labelMedium),
          SizedBox(height: 5.h),
          Text('Wednesday, 22 Feb 1.00PM', style: MTextTheme.semiBold),
          SizedBox(height: 20.h),
          Text('Location', style: MTextTheme.labelMedium),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [Text('Rossi Cardiology Clinic\nVia Garibaldi 15, Milan, Italy', style: MTextTheme.semiBold)],
              ),
              Spacer(),
              Text('See Maps', style: MTextTheme.labelMedium.copyWith(color: MColors.primaryColor)),
              Icon(Icons.arrow_forward_ios, color: MColors.primaryColor, size: 10.sp),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 229,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(width: 1.w, color: Color(0xFFE3E3E3)),
        boxShadow: [BoxShadow(color: Colors.black.withAlpha(120), offset: Offset(1.w, 1.h), blurRadius: 1.r)],
      ),
      child: Column(
        children: [
          /// doctor Details
          Padding(
            padding: EdgeInsets.only(top: 24.h, left: 20.w),
            child: Row(
              children: [
                // circle picture
                CircleProfile(),
                SizedBox(width: 10.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Dr. Luca Rossi', style: MTextTheme.semiBold.copyWith(fontSize: 20.sp)),
                    //specialist
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Cardiology Specialist \t',
                          style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor),
                        ),

                        Icon(Icons.circle, size: 5.sp, color: MColors.textSecondaryColor),

                        Text(' 3 Years', style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor)),
                      ],
                    ),
                    //rattings
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 4.w,
                      children: [
                        Icon(Icons.star, size: 14.sp, color: Color(0XFFFFA740)),
                        Icon(Icons.star, size: 14.sp, color: Color(0XFFFFA740)),
                        Icon(Icons.star, size: 14.sp, color: Color(0XFFFFA740)),
                        Icon(Icons.star, size: 14.sp, color: Color(0XFFFFA740)),
                        Icon(Icons.star_border, size: 14.sp, color: Color(0XFFFFA740)),
                        Text("12 Reviews", style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          /// Education Details
          Padding(
            padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 18.w, bottom: 24.h),
            child: EduAndLicRow(),
          ),
        ],
      ),
    );
  }
}
