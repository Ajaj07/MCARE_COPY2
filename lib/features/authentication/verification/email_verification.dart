import 'package:flutter/material.dart';
import 'package:mcare_copy2/common/widgets/Buttons/primary_button.dart';
import 'package:mcare_copy2/features/authentication/verification/phone_verification.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 60, left: 28, right: 28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Back Button Row
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.arrow_back_ios),
                SizedBox(width: 12),
                Text(
                  'Register',
                  style: TextStyle(
                    fontFamily: 'Khula',
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Color(0XFF090909),
                  ),
                ),
              ],
            ),
            SizedBox(height: 147),

            /// Verification text
            Text(
              'Enter the 4-digit verification code (OTP) sent to your email',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Khula',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0XFF090909),
              ),
            ),
            SizedBox(height: 20),

            /// email
            Align(
              alignment: Alignment.center,
              child: Text(
                'info@gmail.com',
                style: TextStyle(
                  fontFamily: 'Khula',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: MColors.primaryColor,
                ),
              ),
            ),
            // SizedBox(height: 50),

            /// verification OTP
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 36, vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 20,
                children: [
                  Expanded(
                    child: Container(
                      width: 60,
                      height: 60,
                      alignment: Alignment(0, 0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: MColors.secondaryColor,
                          width: 1,
                        ),
                      ),
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontFamily: 'Khula',
                          fontWeight: FontWeight.w400,
                          fontSize: 32,
                          color: MColors.textSecondaryColor,
                        ),
                      ),
                    ),
                  ),
                  // 2'nd
                  Expanded(
                    child: Container(
                      width: 60,
                      height: 60,
                      alignment: Alignment(0, 0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: MColors.secondaryColor,
                          width: 1,
                        ),
                      ),
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontFamily: 'Khula',
                          fontWeight: FontWeight.w400,
                          fontSize: 32,
                          color: MColors.textSecondaryColor,
                        ),
                      ),
                    ),
                  ),
                  // 3'rd Box
                  Expanded(
                    child: Container(
                      width: 60,
                      height: 60,
                      alignment: Alignment(0, 0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: MColors.secondaryColor,
                          width: 1,
                        ),
                      ),
                      child: Text(
                        '',
                        style: TextStyle(
                          fontFamily: 'Khula',
                          fontWeight: FontWeight.w400,
                          fontSize: 32,
                          color: MColors.textSecondaryColor,
                        ),
                      ),
                    ),
                  ),
                  // 4'th Box
                  Expanded(
                    child: Container(
                      width: 60,
                      height: 60,
                      alignment: Alignment(0, 0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: MColors.secondaryColor,
                          width: 1,
                        ),
                      ),
                      child: Text(
                        '',
                        style: TextStyle(
                          fontFamily: 'Khula',
                          fontWeight: FontWeight.w400,
                          fontSize: 32,
                          color: MColors.textSecondaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ///Continue Button
            MPButton(
              label: 'Continue',
              pressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhoneVerification()),
                );
              },
            ),
            SizedBox(height: 16),

            ///  Resend text
            Align(
              alignment: Alignment.center,
              child: Text(
                'Resend in 60 seconds',
                style: TextStyle(
                  fontFamily: 'Khula',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: MColors.textSecondaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
