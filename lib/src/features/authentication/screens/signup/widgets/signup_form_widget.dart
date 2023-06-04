//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ifilter_mobile_application/src/constants/sizes.dart';
import 'package:ifilter_mobile_application/src/constants/colors.dart';
import 'package:ifilter_mobile_application/src/features/authentication/screens/dashboard/dashboard_screen.dart';
import 'package:ifilter_mobile_application/src/features/authentication/screens/login/login_screen.dart';

class SignUpFormWidget extends StatefulWidget {
  SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpFormWidget> createState() => _SignUpFormWidgetState();
}

class _SignUpFormWidgetState extends State<SignUpFormWidget> {
  final GlobalKey<FormState> formSignUpKey = GlobalKey<FormState>();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerFullName = TextEditingController();
  final TextEditingController _controllerPhoneNumber = TextEditingController();

  Future<void> createUserWithEmailAndPassword(BuildContext context) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('User created successfully')),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
      /* await FirebaseFirestore.instance
          .collection('users')
          .doc(userCredential.user!.uid)
          .set({
        'fullName': _controllerFullName.text,
        'phoneNumber': _controllerPhoneNumber.text,
      });*/

      // Send email verification
      await userCredential.user!.sendEmailVerification();
      MaterialPageRoute(builder: (context) => LoginScreen());
    } on FirebaseAuthException catch (e) {
      // Handle registration error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.message ?? 'Registration failed.')),
      );
    }
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  String? validateFullName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Full Name is required';
    }
    return null;
  }

  String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone Number is required';
    }
    return null;
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
              controller: _controllerFullName,
              validator: validateFullName,
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
              validator: validateEmail,
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
              controller: _controllerPhoneNumber,
              validator: validatePhoneNumber,
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
              validator: validatePassword,
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
                  createUserWithEmailAndPassword(context);
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
