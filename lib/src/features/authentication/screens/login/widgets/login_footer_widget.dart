import 'package:flutter/material.dart';
import 'package:ifilter_mobile_application/src/constants/colors.dart';
import 'package:ifilter_mobile_application/src/features/authentication/screens/signup/signup_screen.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                ),
            child: Text.rich(
              TextSpan(
                  text: "Create a New Account? ",
                  style: Theme.of(context).textTheme.bodyText1,
                  children: const [
                    TextSpan(
                        text: "Sign up", style: TextStyle(color: PrimaryColor))
                  ]),
            )),
      ],
    );
  }
}
