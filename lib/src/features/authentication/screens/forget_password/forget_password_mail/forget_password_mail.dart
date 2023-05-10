import 'package:flutter/material.dart';
import 'package:ifilter_mobile_application/src/constants/sizes.dart';
import 'package:ifilter_mobile_application/src/constants/image_string.dart';
import '../../../../../constants/text_strings.dart';
import '../../../../../common_widgets/form/form_header_widget.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(DefaultSize),
            child: Column(
              children: [
                SizedBox(height: DefaultSize * 4),
                FormHeaderWidget(
                  image: ForgetPasswordImage,
                  title: LoginTitle,
                  subTitle: LoginSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30.0,
                  textAlign: TextAlign.center,
                ),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text("Email"),
                          hintText: 'Email',
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {}, child: Text("Next "))),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
