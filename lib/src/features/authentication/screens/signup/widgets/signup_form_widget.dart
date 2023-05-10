import 'package:flutter/material.dart';
import 'package:ifilter_mobile_application/src/constants/sizes.dart';
import 'package:ifilter_mobile_application/src/constants/colors.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(vertical: 50),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                label: Text("Full Name"),
                prefixIcon:
                    Icon(Icons.person_outline_rounded, color: PrimaryColor),
              ),
            ),
            const SizedBox(height: FormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                label: Text("Email"),
                prefixIcon: Icon(Icons.email_outlined, color: PrimaryColor),
              ),
            ),
            const SizedBox(height: FormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                label: Text("Phone Number"),
                prefixIcon: Icon(Icons.numbers, color: PrimaryColor),
              ),
            ),
            const SizedBox(height: FormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                label: Text("Password"),
                prefixIcon: Icon(Icons.fingerprint, color: PrimaryColor),
              ),
            ),
            const SizedBox(height: FormHeight - 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: PrimaryColor,
                    side: BorderSide.none,
                    shape: const StadiumBorder()),
                child: const Text("Sign up",
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
