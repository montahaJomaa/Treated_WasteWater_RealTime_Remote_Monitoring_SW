import 'package:flutter/material.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import 'forget_password_btn_widget.dart';
import '../forget_password_mail/forget_password_mail.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: EdgeInsets.all(DefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(ForgetPasswordTitle,
                style: Theme.of(context).textTheme.headline5),
            Text(ForgetPasswordSubTitle,
                style: Theme.of(context).textTheme.bodyText2),
            const SizedBox(height: 30.0),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mail_outline_rounded,
              title: "E-Mail",
              subTitle: " Reset Via E-Mail",
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ForgetPasswordMailScreen()),
              ),
            ),
            SizedBox(height: 20.0),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: "Phone Number",
              subTitle: " Reset Via Phone",
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ForgetPasswordMailScreen()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
