import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/features/service/articel/widgets/articel_card.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

import '../../../common/widgets/Buttons/primary_button.dart';
import '../../../common/widgets/Buttons/secondary_button.dart';
import '../../../utils/constants/colors.dart';
import 'widgets/article_tile.dart';
import 'widgets/topic_card.dart';

///-------------------[without Screen Util ] --------------------------
/*
class ArticelList extends StatelessWidget {
  ArticelList({super.key});
  final List<ArticelCard> articelCard = [
    ArticelCard(
      imageName: 'assets/images/articel/articel_2.png',
      title: '5 Tips for Boosting Your Immune System Naturally',
      buttonTitle: 'Read Articel',
    ),
    ArticelCard(
      imageName: 'assets/images/articel/articel_1.png',
      title: '5 Tips for Boosting Your Immune System Naturally',
      buttonTitle: 'Read Articel',
    ),
    ArticelCard(
      imageName: 'assets/images/articel/articel_2.png',
      title: '5 Tips for Boosting Your Immune System Naturally',
      buttonTitle: 'Read Articel',
    ),
  ];
  final List<TopicCard> topicCard = [
    TopicCard(imageName: 'assets/images/articel/hot_topic/hot_topic_1.png', title: 'Mental Health'),
    TopicCard(imageName: 'assets/images/articel/hot_topic/hot_topic_2.png', title: 'Lifestyle'),
    TopicCard(imageName: 'assets/images/articel/hot_topic/hot_topic_3.png', title: 'art'),
  ];
  final List<Widget> buttons = [
    MPButton2(label: 'All Article'),
    MSButton2(
      label: 'adults',
      textStyle: MTextTheme.bodyMedium.copyWith(color: MColors.textThirtyColor),
    ),
    MSButton2(
      label: 'Infants and Toddlers',
      textStyle: MTextTheme.bodyMedium.copyWith(color: MColors.textThirtyColor),
    ),
    MSButton2(
      label: 'adults',
      textStyle: MTextTheme.bodyMedium.copyWith(color: MColors.textThirtyColor),
    ),
    MSButton2(
      label: 'adults',
      textStyle: MTextTheme.bodyMedium.copyWith(color: MColors.textThirtyColor),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: SafeArea(child: ArticelAppBar()),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///--------------------[Hot Articel Section]-----------------------------------
            // title
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26),
              child: Text('Hot Articel', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
            ),
            SizedBox(height: 10),
            // Horizontal Article List
            SizedBox(
              height: 180,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) => articelCard[index],
                separatorBuilder: (context, index) => SizedBox(width: 10),
                itemCount: articelCard.length,
              ),
            ),
            SizedBox(height: 10),

            ///--------------------[Hot Topic Section]-----------------------------------
            // title
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26),
              child: Text('Hot Topic', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
            ),
            SizedBox(height: 10),
            // topic card
            Padding(
              padding: EdgeInsets.only(left: 26),
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => topicCard[index],
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemCount: topicCard.length,
                ),
              ),
            ),
            SizedBox(height: 10),

            ///--------------------[Latest Article Section]-----------------------------------
            // title
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26),
              child: Text('Latest Article', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
            ),
            SizedBox(height: 10),
            // row of button
            Padding(
              padding: EdgeInsets.only(left: 26),
              child: SizedBox(
                height: 30,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buttons[index],
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemCount: buttons.length,
                ),
              ),
            ),
            SizedBox(height: 20),

            // list of Articles
            ArticleTile(imageName: 'assets/images/articel/article_list/article_list_1.png'),
            SizedBox(height: 10),
            ArticleTile(imageName: 'assets/images/articel/article_list/article_list_2.png'),
            SizedBox(height: 10),
            ArticleTile(imageName: 'assets/images/articel/article_list/article_list_3.png'),
            SizedBox(height: 10),
            ArticleTile(imageName: 'assets/images/articel/article_list/article_list_1.png'),
            SizedBox(height: 10),
            ArticleTile(imageName: 'assets/images/articel/article_list/article_list_2.png'),
            SizedBox(height: 10),
            ArticleTile(imageName: 'assets/images/articel/article_list/article_list_3.png'),
            SizedBox(height: 10),
            ArticleTile(imageName: 'assets/images/articel/article_list/article_list_1.png'),
            SizedBox(height: 10),
            ArticleTile(imageName: 'assets/images/articel/article_list/article_list_2.png'),
            SizedBox(height: 10),
            ArticleTile(imageName: 'assets/images/articel/article_list/article_list_3.png'),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
*/
///-------------------[with Screen Util ] --------------------------

class ArticelList extends StatelessWidget {
  ArticelList({super.key});

  final List<ArticelCard> articelCard = [
    const ArticelCard(
      imageName: 'assets/images/articel/articel_2.png',
      title: '5 Tips for Boosting Your Immune System Naturally',
      buttonTitle: 'Read Articel',
    ),
    const ArticelCard(
      imageName: 'assets/images/articel/articel_1.png',
      title: '5 Tips for Boosting Your Immune System Naturally',
      buttonTitle: 'Read Articel',
    ),
    const ArticelCard(
      imageName: 'assets/images/articel/articel_2.png',
      title: '5 Tips for Boosting Your Immune System Naturally',
      buttonTitle: 'Read Articel',
    ),
  ];

  final List<TopicCard> topicCard = [
    const TopicCard(imageName: 'assets/images/articel/hot_topic/hot_topic_1.png', title: 'Mental Health'),
    const TopicCard(imageName: 'assets/images/articel/hot_topic/hot_topic_2.png', title: 'Lifestyle'),
    const TopicCard(imageName: 'assets/images/articel/hot_topic/hot_topic_3.png', title: 'art'),
  ];

  // Note: Depending on your custom button definitions, you might need to adjust their internal
  // padding/sizes with ScreenUtil as well, but their usage here remains standard.
  final List<Widget> buttons = [
    MPButton2(label: 'All Article'),
    MSButton2(
      label: 'adults',
      textStyle: MTextTheme.bodyMedium.copyWith(color: MColors.textThirtyColor),
    ),
    MSButton2(
      label: 'Infants and Toddlers',
      textStyle: MTextTheme.bodyMedium.copyWith(color: MColors.textThirtyColor),
    ),
    MSButton2(
      label: 'adults',
      textStyle: MTextTheme.bodyMedium.copyWith(color: MColors.textThirtyColor),
    ),
    MSButton2(
      label: 'adults',
      textStyle: MTextTheme.bodyMedium.copyWith(color: MColors.textThirtyColor),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: SafeArea(child: ArticelAppBar()),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///--------------------[Hot Articel Section]-----------------------------------
            // title
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.w), // ScreenUtil applied
              child: Text(
                'Hot Articel',
                style: MTextTheme.semiBold.copyWith(fontSize: 16.sp), // ScreenUtil applied
              ),
            ),
            SizedBox(height: 10.h), // ScreenUtil applied
            // Horizontal Article List
            SizedBox(
              height: 180.h, // ScreenUtil applied
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => articelCard[index],
                separatorBuilder: (context, index) => SizedBox(width: 10.w), // ScreenUtil applied
                itemCount: articelCard.length,
              ),
            ),
            SizedBox(height: 10.h), // ScreenUtil applied
            ///--------------------[Hot Topic Section]-----------------------------------
            // title
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.w), // ScreenUtil applied
              child: Text(
                'Hot Topic',
                style: MTextTheme.semiBold.copyWith(fontSize: 16.sp), // ScreenUtil applied
              ),
            ),
            SizedBox(height: 10.h), // ScreenUtil applied
            // topic card
            Padding(
              padding: EdgeInsets.only(left: 26.w), // ScreenUtil applied
              child: SizedBox(
                height: 80.h, // ScreenUtil applied
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => topicCard[index],
                  separatorBuilder: (context, index) => SizedBox(width: 10.w), // ScreenUtil applied
                  itemCount: topicCard.length,
                ),
              ),
            ),
            SizedBox(height: 10.h), // ScreenUtil applied
            ///--------------------[Latest Article Section]-----------------------------------
            // title
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.w), // ScreenUtil applied
              child: Text(
                'Latest Article',
                style: MTextTheme.semiBold.copyWith(fontSize: 16.sp), // ScreenUtil applied
              ),
            ),
            SizedBox(height: 10.h), // ScreenUtil applied
            // row of button
            Padding(
              padding: EdgeInsets.only(left: 26.w), // ScreenUtil applied
              child: SizedBox(
                height: 30.h, // ScreenUtil applied
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buttons[index],
                  separatorBuilder: (context, index) => SizedBox(width: 10.w), // ScreenUtil applied
                  itemCount: buttons.length,
                ),
              ),
            ),
            SizedBox(height: 20.h), // ScreenUtil applied
            // list of Articles
            const ArticleTile(imageName: 'assets/images/articel/article_list/article_list_1.png'),
            SizedBox(height: 10.h), // ScreenUtil applied
            const ArticleTile(imageName: 'assets/images/articel/article_list/article_list_2.png'),
            SizedBox(height: 10.h), // ScreenUtil applied
            const ArticleTile(imageName: 'assets/images/articel/article_list/article_list_3.png'),
            SizedBox(height: 10.h), // ScreenUtil applied
            const ArticleTile(imageName: 'assets/images/articel/article_list/article_list_1.png'),
            SizedBox(height: 10.h), // ScreenUtil applied
            const ArticleTile(imageName: 'assets/images/articel/article_list/article_list_2.png'),
            SizedBox(height: 10.h), // ScreenUtil applied
            const ArticleTile(imageName: 'assets/images/articel/article_list/article_list_3.png'),
            SizedBox(height: 10.h), // ScreenUtil applied
            const ArticleTile(imageName: 'assets/images/articel/article_list/article_list_1.png'),
            SizedBox(height: 10.h), // ScreenUtil applied
            const ArticleTile(imageName: 'assets/images/articel/article_list/article_list_2.png'),
            SizedBox(height: 10.h), // ScreenUtil applied
            const ArticleTile(imageName: 'assets/images/articel/article_list/article_list_3.png'),
            SizedBox(height: 10.h), // ScreenUtil applied
          ],
        ),
      ),
    );
  }
}

class ArticelAppBar extends StatelessWidget {
  const ArticelAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 10.h),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/icons/back_arrow.png', width: 24.w, height: 24.h, fit: BoxFit.cover),
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.only(right: 26.w, left: 10.w),
              height: 48.h,
              child: SearchBar(
                hintText: 'Search product or store',
                hintStyle: WidgetStatePropertyAll(
                  TextStyle(color: MColors.textThirtyColor, fontSize: 14.sp, fontFamily: 'Khula'),
                ),
                leading: Icon(Icons.search, color: MColors.textThirtyColor, size: 22.sp),
                elevation: WidgetStatePropertyAll(0),
                backgroundColor: WidgetStatePropertyAll(Color(0xFFF9F9F9)),
                side: WidgetStatePropertyAll(BorderSide(color: MColors.thirtyColor, width: 1.w)),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
