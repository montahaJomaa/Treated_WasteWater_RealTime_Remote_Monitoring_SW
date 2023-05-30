import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ifilter_mobile_application/src/constants/sizes.dart';
import 'package:ifilter_mobile_application/src/constants/colors.dart';
import 'package:ifilter_mobile_application/src/features/authentication/screens/dashboard/dashboard_screen.dart';

class SignUpFormWidget extends StatelessWidget {
  SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  GlobalKey<FormState> formSignUpKey = GlobalKey<FormState>();

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );

      MaterialPageRoute(builder: (context) => Dashboard());
    } on FirebaseAuthException catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //padding: EdgeInsets.symmetric(vertical: 50),
      child: Form(
        key: formSignUpKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                label: Text("Full Name"),
                prefixIcon:
                    Icon(Icons.person_outline_rounded, color: PrimaryColor),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: PrimaryColor),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: PrimaryColor),
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
            ),
            const SizedBox(height: FormHeight - 20),
            TextFormField(
              controller: _controllerEmail,
              decoration: InputDecoration(
                label: Text("Email"),
                prefixIcon: Icon(Icons.email_outlined, color: PrimaryColor),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: PrimaryColor),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: PrimaryColor),
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
            ),
            const SizedBox(height: FormHeight - 20),
            TextFormField(
              decoration: InputDecoration(
                label: Text("Phone Number"),
                prefixIcon: Icon(Icons.numbers, color: PrimaryColor),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: PrimaryColor),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: PrimaryColor),
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
            ),
            const SizedBox(height: FormHeight - 20),
            TextFormField(
              controller: _controllerPassword,
              decoration: InputDecoration(
                label: Text("Password"),
                prefixIcon: Icon(Icons.fingerprint, color: PrimaryColor),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: PrimaryColor),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: PrimaryColor),
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
            ),
            const SizedBox(height: FormHeight - 10),
            SizedBox(
              width: double.infinity,
              height: FormHeight + 15,
              child: ElevatedButton(
                onPressed: () {
                  createUserWithEmailAndPassword();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: PrimaryColor,
                  side: BorderSide.none,
                  shape: const StadiumBorder(),
                ),
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
