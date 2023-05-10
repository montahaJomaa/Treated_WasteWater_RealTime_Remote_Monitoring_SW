import 'package:flutter/material.dart';
import 'package:ifilter_mobile_application/src/constants/colors.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import 'forget_password_btn_widget.dart';
import '../forget_password_mail/forget_password_mail.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      builder: (context) => Container(
        padding: EdgeInsets.symmetric(vertical: 60, horizontal: 30),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(ForgetPasswordTitle,
                  style: Theme.of(context).textTheme.headline5),
              Align(
                alignment: Alignment
                    .center, // Align the ForgetPasswordSubTitle to center
                child: Text(ForgetPasswordSubTitle,
                    style: Theme.of(context).textTheme.bodyText2),
              ),
              const SizedBox(height: 30.0),
              ForgetPasswordBtnWidget(
                btnIcon: Icons.mail_outline_rounded,
                title: "E-Mail",
                subTitle: "Reset Via E-Mail",
                iconColor: PrimaryColor, // Specify the desired color here
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
                subTitle: "Reset Via Phone",
                iconColor: PrimaryColor, // Specify the desired color here
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ForgetPasswordMailScreen()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
