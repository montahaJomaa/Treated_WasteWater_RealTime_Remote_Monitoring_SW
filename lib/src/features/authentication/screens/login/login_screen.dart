import 'package:flutter/material.dart';
import 'package:ifilter_mobile_application/src/constants/image_string.dart';
import 'package:ifilter_mobile_application/src/constants/text_strings.dart';
import 'widgets/login_form_widget.dart';
import 'widgets/login_footer_widget.dart';
import '../../../../common_widgets/form/form_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FormHeaderWidget(
                  image: LoginScreenImage,
                  title: LoginTitle,
                  subTitle: LoginSubTitle,
                ),
                const LoginForm(),
                LoginFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
