import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ifilter_mobile_application/src/constants/colors.dart';
import 'package:ifilter_mobile_application/src/constants/sizes.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  void dispose() {
    _controllerEmail.dispose();
    super.dispose();
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    return null;
  }

  final TextEditingController _controllerEmail = TextEditingController();

  Future<void> passwordRest(BuildContext context) async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _controllerEmail.text);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Reset Password Email Sent')),
      );
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Reset Password Email Failed')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Please Enter Your Email!"),
            SizedBox(height: 5),
            TextFormField(
              controller: _controllerEmail,
              validator: validateEmail,
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
            SizedBox(
                width: double.infinity,
                height: FormHeight + 15,
                child: ElevatedButton(
                  onPressed: () {
                    passwordRest(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: PrimaryColor,
                    side: BorderSide(color: PrimaryColor),
                    shape: const StadiumBorder(),
                  ),
                  child: const Text(
                    "Reset Password",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
