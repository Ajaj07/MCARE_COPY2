// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// import '../../../../../../common/widgets/images/comon_profile.dart';
// import '../../../../../../utils/constants/colors.dart';
// import '../../../../../../utils/theme/widget/text_theme.dart';

// class ChatScreen extends StatelessWidget {
//   const ChatScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: PreferredSize(preferredSize: Size.fromHeight(kToolbarHeight), child: ChatScreenAppBar()),
//       body: Stack(
//         children: [
//           Row(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               SizedBox(),
//               Container(
//                 decoration: BoxDecoration(
//                   color: MColors.primaryColor,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(6),
//                     topRight: Radius.circular(6),
//                     bottomLeft: Radius.circular(6),
//                   ),
//                 ),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'hello  do you avaible to schedule an appointment fro medical consultation',
//                       style: MTextTheme.labelMedium.copyWith(color: Colors.white),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ChatScreenAppBar extends StatelessWidget {
//   const ChatScreenAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       surfaceTintColor: Colors.transparent,
//       titleSpacing: 0,
//       //leadingWidth: ,  // width of the leadning
//       leading: Icon(Icons.arrow_back_ios_new_rounded, color: MColors.textSecondaryColor),
//       title: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           // left side spacing is 12
//           ComonProfile(
//             width: 44,
//             height: 44,
//             imageName: 'assets/images/chat/fabian.png',
//             borderWidth: 2,
//             boxFit: BoxFit.fill,
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: 0.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text('Dr. Giovanni Bianchi', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
//                 // SizedBox(height: 10),
//                 Text('General Surgery', style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor)),
//               ],
//             ),
//           ),
//         ],
//       ),
//       actions: [
//         SvgPicture.asset(
//           'assets/icons/svg/video.svg',
//           width: 24,
//           height: 24,
//           colorFilter: ColorFilter.mode(MColors.textThirtyColor, BlendMode.srcIn),
//           fit: BoxFit.fill,
//         ),
//         SizedBox(width: 16),

//         SvgPicture.asset(
//           'assets/icons/svg/call.svg',
//           width: 24,
//           height: 24,
//           colorFilter: ColorFilter.mode(MColors.textThirtyColor, BlendMode.srcIn),
//           fit: BoxFit.fill,
//         ),
//         // right side padding is 28
//         SizedBox(width: 16),
//       ],
//     );
//   }
// }

/// claude code

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../common/widgets/images/comon_profile.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/theme/widget/text_theme.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(preferredSize: Size.fromHeight(kToolbarHeight), child: ChatScreenAppBar()),
      body: Column(
        children: [
          const SizedBox(height: 12),
          const ChatDateDivider(label: 'Today'),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              children: const [
                ChatBubble(
                  message: 'Hello Doctor! I\'d like to schedule an appointment for a medical consultation',
                  time: '09:32 PM',
                  isSent: true,
                ),
                SizedBox(height: 16),
                ChatBubble(
                  message:
                      'Hello! Of course, I\'m glad to assist you. '
                      'What health concerns are you experiencing?',
                  time: '09:32 PM',
                  isSent: false,
                ),
                SizedBox(height: 16),
                ChatBubble(
                  message: 'I\'ve been experiencing constant headaches over the past few days',
                  time: '09:32 PM',
                  isSent: true,
                ),
                SizedBox(height: 16),
                ChatBubble(
                  message:
                      'I understand. Let\'s schedule your appointment. '
                      'Do you have any specific time preferences?',
                  time: '09:32 PM',
                  isSent: false,
                ),
                SizedBox(height: 16),
                ChatBubble(message: 'I prefer Monday mornings, if possible.', time: '09:32 PM', isSent: true),
              ],
            ),
          ),
          const ChatInputBar(),
        ],
      ),
    );
  }
}

/// Reusable chat bubble for sent/received messages
class ChatBubble extends StatelessWidget {
  const ChatBubble({super.key, required this.message, required this.time, required this.isSent});

  final String message;
  final String time;
  final bool isSent;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isSent ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              color: isSent ? MColors.primaryColor : MColors.textThirtyColor.withOpacity(0.08),
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(6),
                topRight: const Radius.circular(6),
                bottomLeft: Radius.circular(isSent ? 6 : 0),
                bottomRight: Radius.circular(isSent ? 0 : 6),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message,
                  style: MTextTheme.labelMedium.copyWith(color: isSent ? Colors.white : MColors.textSecondaryColor),
                ),
              ],
            ),
          ),
        ),
        // keep timestamp aligned below bubble, outside the colored box
      ],
    ).withTimestamp(time, isSent);
  }
}

/// Extension to stack the timestamp under the bubble without repeating code
extension _ChatBubbleTimestamp on Row {
  Widget withTimestamp(String time, bool isSent) {
    return Column(
      crossAxisAlignment: isSent ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        this,
        const SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(time, style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor, fontSize: 11)),
        ),
      ],
    );
  }
}

/// "Today" pill divider
class ChatDateDivider extends StatelessWidget {
  const ChatDateDivider({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        decoration: BoxDecoration(
          color: MColors.textThirtyColor.withOpacity(0.08),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(label, style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor)),
      ),
    );
  }
}

/// Bottom message input bar
class ChatInputBar extends StatelessWidget {
  const ChatInputBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
            color: MColors.textThirtyColor.withOpacity(0.06),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text('Type here...', style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor)),
              ),
              SvgPicture.asset(
                'assets/icons/svg/document.svg',
                width: 22,
                height: 22,
                colorFilter: ColorFilter.mode(MColors.textThirtyColor, BlendMode.srcIn),
              ),
              const SizedBox(width: 14),
              SvgPicture.asset(
                'assets/icons/svg/camera.svg',
                width: 22,
                height: 22,
                colorFilter: ColorFilter.mode(MColors.textThirtyColor, BlendMode.srcIn),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatScreenAppBar extends StatelessWidget {
  const ChatScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      titleSpacing: 0,
      leading: Icon(Icons.arrow_back_ios_new_rounded, color: MColors.textSecondaryColor),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ComonProfile(
            width: 44,
            height: 44,
            imageName: 'assets/images/chat/fabian.png',
            borderWidth: 2,
            boxFit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Dr. Giovanni Bianchi', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
                Text('General Surgery', style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor)),
              ],
            ),
          ),
        ],
      ),
      actions: [
        SvgPicture.asset(
          'assets/icons/svg/video.svg',
          width: 24,
          height: 24,
          colorFilter: ColorFilter.mode(MColors.textThirtyColor, BlendMode.srcIn),
          fit: BoxFit.fill,
        ),
        const SizedBox(width: 16),
        SvgPicture.asset(
          'assets/icons/svg/call.svg',
          width: 24,
          height: 24,
          colorFilter: ColorFilter.mode(MColors.textThirtyColor, BlendMode.srcIn),
          fit: BoxFit.fill,
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}
