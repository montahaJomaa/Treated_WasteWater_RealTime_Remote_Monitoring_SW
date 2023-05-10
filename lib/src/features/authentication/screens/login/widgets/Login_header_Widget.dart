import 'package:flutter/material.dart';
import '../../../../../constants/text_strings.dart';
import '../../../../../constants/image_string.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(LoginScreenImage),
          height: size.height * 0.5,
          width: size.width * 0.5,
        ),
        Text(
          LoginTitle,
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          LoginSubTitle,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
