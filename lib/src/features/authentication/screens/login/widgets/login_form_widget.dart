import 'package:flutter/material.dart';
import 'package:ifilter_mobile_application/src/constants/sizes.dart';
import 'package:ifilter_mobile_application/src/constants/colors.dart';
import '../../../../../features/authentication/screens/forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon:
                    Icon(Icons.person_outline_outlined, color: PrimaryColor),
                labelText: "Email",
                hintText: "Email",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  borderSide: BorderSide(color: PrimaryColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  borderSide: BorderSide(color: PrimaryColor),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.fingerprint, color: PrimaryColor),
                labelText: "Password",
                hintText: "Password",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  borderSide: BorderSide(color: PrimaryColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  borderSide: BorderSide(color: PrimaryColor),
                ),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp, color: PrimaryColor),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgetPasswordScreen.buildShowModalBottomSheet(context);
                },
                child: const Text(
                  "Forget Password?",
                  style: TextStyle(color: PrimaryColor),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: FormHeight + 15,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: PrimaryColor,
                  side: BorderSide(color: PrimaryColor),
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  "Log in",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
