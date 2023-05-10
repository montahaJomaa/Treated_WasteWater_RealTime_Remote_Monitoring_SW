import "package:flutter/material.dart";
import 'package:ifilter_mobile_application/src/common_widgets/form/form_header_widget.dart';
import 'package:ifilter_mobile_application/src/constants/colors.dart';
import 'package:ifilter_mobile_application/src/constants/image_string.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import 'package:ifilter_mobile_application/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';
import 'package:ifilter_mobile_application/src/features/authentication/screens/login/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FormHeaderWidget(
                    image: LoginScreenImage,
                    title: SignUptitle,
                    subTitle: SignUpsubTitle),
                SignUpFormWidget(),
                TextButton(
                    onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        ),
                    child: Text.rich(
                      TextSpan(
                          text: "Already have an Account? ",
                          style: Theme.of(context).textTheme.bodyText1,
                          children: const [
                            TextSpan(
                                text: "Log in",
                                style: TextStyle(color: PrimaryColor))
                          ]),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
