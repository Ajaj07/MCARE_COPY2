/*
 import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

import '../../../../../utils/constants/colors.dart';

class DescriptionTabbar extends StatefulWidget {
  const DescriptionTabbar({super.key});

  @override
  State<DescriptionTabbar> createState() => _DescriptionTabbarState();
}

class _DescriptionTabbarState extends State<DescriptionTabbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        titleSpacing: 12.w, // matches Figma's Gap: 12px between icon/title/icon
        leadingWidth: 28.w + 20.sp, // edge margin + icon width, so icon sits flush at 28.w from screen edge
        leading: Padding(
          padding: EdgeInsets.only(left: 28.w), // matches frame's (428-372)/2 = 28px edge margin
          child: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new, size: 20.sp, color: MColors.textSecondaryColor),
          ),
        ),
        title: Text(
          'Bufect Strip of 4 Tablets -Heat and Pain Relief Medicine',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: MTextTheme.bold.copyWith(fontSize: 16.sp, color: const Color(0XFF090909)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            icon: SvgPicture.asset(
              'assets/icons/svg/share_icon.svg',
              height: 20.8.sp,
              width: 20.8.sp,
              colorFilter: const ColorFilter.mode(MColors.textSecondaryColor, BlendMode.srcIn),
            ),
          ),
          SizedBox(width: 28.w), // matches the 28px edge margin on the right
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TabBar(
              indicatorColor: MColors.primaryColor,
              indicatorAnimation: TabIndicatorAnimation.elastic,
              indicatorSize: TabBarIndicatorSize.label,
              dividerColor: Color(0xFFE3E3E3),
              isScrollable: true,
              indicatorWeight: 2,
              tabAlignment: TabAlignment.start,
              dividerHeight: 2.h,
              labelStyle: TextStyle(
                fontFamily: 'Khula',
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                color: MColors.primaryColor,
              ),
              unselectedLabelStyle: TextStyle(
                fontFamily: 'Khula',
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: Color(0XFF4D4D4D),
              ),
              tabs: const [
                Tab(text: "Desription"),
                Tab(text: "Details"),
                Tab(text: "Reviews"),
              ],
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 26, right: 26),
                child: TabBarView(children: [ ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme_screen_util.dart';

import '../../../../../common/widgets/Buttons/primary_button.dart';
import '../../../../../common/widgets/review/review.dart';
import '../../../../../utils/constants/colors.dart';
import '../../widgets/medicine_card.dart';
import 'widgets/all_descriptive_widget.dart';

class DescriptionTabbar extends StatefulWidget {
  const DescriptionTabbar({super.key});

  @override
  State<DescriptionTabbar> createState() => _DescriptionTabbarState();
}

class _DescriptionTabbarState extends State<DescriptionTabbar> with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  final ScrollController _scrollController = ScrollController();

  // One key per section — used to measure/scroll to that section
  final GlobalKey _descriptionKey = GlobalKey();
  final GlobalKey _detailsKey = GlobalKey();
  final GlobalKey _reviewsKey = GlobalKey();

  late final List<GlobalKey> _sectionKeys = [_descriptionKey, _detailsKey, _reviewsKey];

  // Prevents the scroll listener from fighting a tab-tap-triggered animation
  bool _isProgrammaticScroll = false;

  final List<MedicineCard> medicineCard = [
    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_1.png',
      medicineName: 'Promag 10 Tablets',
      price: '\$4,00',
    ),
    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_2.png',
      medicineName: 'STRIP NEURODEX 10 Tablets',
      price: '\$4,00',
    ),

    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_1.png',
      medicineName: 'Promag 10 Tablets',
      price: '\$4,00',
    ),
    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_2.png',
      medicineName: 'STRIP NEURODEX 10 Tablets',
      price: '\$4,00',
    ),

    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_1.png',
      medicineName: 'Promag 10 Tablets',
      price: '\$4,00',
    ),
    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_2.png',
      medicineName: 'STRIP NEURODEX 10 Tablets',
      price: '\$4,00',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _scrollController.addListener(_handleScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_handleScroll);
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  /// Called on every scroll frame — figures out which section is
  /// currently under the top of the viewport and highlights that tab.
  void _handleScroll() {
    if (_isProgrammaticScroll) return;

    final ancestorBox = context.findRenderObject() as RenderBox?;
    if (ancestorBox == null) return;

    // threshold = how far below the TabBar a section's top needs to be
    // before we still count it as "active" (tune this to taste)
    const double threshold = 60;

    int activeIndex = 0;
    for (int i = 0; i < _sectionKeys.length; i++) {
      final ctx = _sectionKeys[i].currentContext;
      if (ctx == null) continue;
      final box = ctx.findRenderObject() as RenderBox;
      final position = box.localToGlobal(Offset.zero, ancestor: ancestorBox);
      if (position.dy <= threshold) {
        activeIndex = i; // keep advancing — last section scrolled past wins
      }
    }

    if (activeIndex != _tabController.index) {
      _tabController.animateTo(activeIndex);
    }
  }

  /// Called when a tab is tapped — animates the scroll to that section.
  void _onTabTap(int index) {
    final ctx = _sectionKeys[index].currentContext;
    if (ctx == null) return;

    final ancestorBox = context.findRenderObject() as RenderBox?;
    if (ancestorBox == null) return;

    final box = ctx.findRenderObject() as RenderBox;
    final position = box.localToGlobal(Offset.zero, ancestor: ancestorBox);
    final targetOffset = (_scrollController.offset + position.dy).clamp(
      0.0,
      _scrollController.position.maxScrollExtent,
    );

    setState(() => _isProgrammaticScroll = true);
    _scrollController
        .animateTo(targetOffset, duration: const Duration(milliseconds: 400), curve: Curves.easeInOut)
        .then((_) => setState(() => _isProgrammaticScroll = false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        titleSpacing: 12.w,
        leadingWidth: 28.w + 20.sp,
        leading: Padding(
          padding: EdgeInsets.only(left: 28.w),
          child: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new, size: 20.sp, color: MColors.textSecondaryColor),
          ),
        ),
        title: Text(
          'Bufect Strip of 4 Tablets -Heat and Pain Relief Medicine',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: MTextTheme.bold.copyWith(fontSize: 16.sp, color: const Color(0XFF090909)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            icon: SvgPicture.asset(
              'assets/icons/svg/share_icon.svg',
              height: 20.8.sp,
              width: 20.8.sp,
              colorFilter: const ColorFilter.mode(MColors.textSecondaryColor, BlendMode.srcIn),
            ),
          ),
          SizedBox(width: 28.w),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Sits OUTSIDE the scroll area — stays visible at all times,
          // and its highlighted tab now reflects scroll position.
          TabBar(
            controller: _tabController,
            onTap: _onTabTap,
            indicatorColor: MColors.primaryColor,
            indicatorAnimation: TabIndicatorAnimation.elastic,
            indicatorSize: TabBarIndicatorSize.label,
            dividerColor: const Color(0xFFE3E3E3),
            isScrollable: true,
            indicatorWeight: 2,
            tabAlignment: TabAlignment.start,
            dividerHeight: 2.h,
            labelStyle: TextStyle(
              fontFamily: 'Khula',
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
              color: MColors.primaryColor,
            ),
            unselectedLabelStyle: TextStyle(
              fontFamily: 'Khula',
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
              color: const Color(0XFF4D4D4D),
            ),
            tabs: const [
              Tab(text: "Description"),
              Tab(text: "Details"),
              Tab(text: "Reviews"),
            ],
          ),

          Expanded(
            child: Stack(
              children: [
                SingleChildScrollView(
                  controller: _scrollController,
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 20.h, bottom: 100.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ---------------- Description section ----------------
                      Column(
                        key: _descriptionKey,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProductDescription(),
                          SizedBox(height: 20.h),
                          ProductBenefits(),
                        ],
                      ),
                      SizedBox(height: 30.h),

                      // ---------------- Details section ----------------
                      Column(
                        key: _detailsKey,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProductComposition(),
                          SizedBox(height: 20.h),
                          ProductDosage(),
                          SizedBox(height: 20.h),
                          StorageInstructionHalf(),
                          SizedBox(height: 20.h),
                          StorageInstructionFull(),
                        ],
                      ),
                      SizedBox(height: 30.h),

                      // ---------------- Reviews section ----------------
                      Column(
                        key: _reviewsKey,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Reviews', style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
                          SizedBox(height: 7.h),
                          SizedBox(
                            height: 200.h,
                            width: double.infinity,
                            child: ListView.separated(
                              padding: EdgeInsets.all(8.w),
                              clipBehavior: Clip.none,

                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return MReviewCard(
                                  name: 'Emily Johnson',
                                  avatarAsset: 'assets/images/chat/doc_details1.jpg',
                                  daysAgo: '1 day ago',
                                  rating: 4.0,
                                  reviewText:
                                      "My consultation with Dr. Luca Rossi was excellent. He's knowledgeable, attentive, and provid...",
                                  onMoreViewTap: () => print('open full review'),
                                );
                              },
                              separatorBuilder: (context, index) => SizedBox(width: 20.w),
                              // clipBehavior: Clip.none,
                              itemCount: 3,
                            ),
                          ),
                          SizedBox(height: 20.h),

                          // related products
                          Text('Related Products', style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
                          SizedBox(height: 7.h),
                          SizedBox(
                            height: 248.h,
                            width: double.infinity,
                            child: ListView.separated(
                              clipBehavior: Clip.none,
                              separatorBuilder: (context, index) => SizedBox(width: 10.w),
                              itemCount: medicineCard.length,
                              itemBuilder: (context, index) {
                                return medicineCard[index];
                              },
                              scrollDirection: Axis.horizontal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Fixed Add to Cart — outside the scroll view entirely,
                // so it never moves regardless of which section is active.
                Positioned(
                  left: 24.w,
                  right: 24.w,
                  bottom: 20.h,
                  child: SizedBox(
                    height: 45.h,
                    child: MPButton2(label: 'Add to Cart'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
