import 'package:flutter/material.dart';
import 'package:ifilter_mobile_application/src/constants/colors.dart';
import 'package:ifilter_mobile_application/src/constants/image_string.dart';
import 'package:ifilter_mobile_application/src/constants/text_strings.dart';
import 'package:ifilter_mobile_application/src/constants/sizes.dart';
import 'profile_screen.dart';
import 'package:ifilter_mobile_application/src/common_widgets/bottom_navigation_menu/bottom_navigation_menu.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UpdateProfileScreen extends StatelessWidget {
  UpdateProfileScreen({Key? key}) : super(key: key);
  final User? user = FirebaseAuth.instance.currentUser;
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> updateProfile(BuildContext context) async {
    final String fullName = _fullNameController.text.trim();
    final String email = _emailController.text.trim();
    final String phoneNumber = _phoneController.text.trim();
    final String password = _passwordController.text.trim();

    if (fullName.isEmpty ||
        email.isEmpty ||
        password.isEmpty ||
        phoneNumber.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please fill in all required fields.")),
      );
      return;
    }
    try {
      await user?.updateDisplayName(_fullNameController.text);
      await user?.updateEmail(_emailController.text);
      // await user?.updatePhoneNumber(_phoneController);
      await user?.updatePassword(_passwordController.text);
      // Profile update successful
      print('User profile updated successfully');
      await user?.reload(); // Reload the user data from Firebase
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Profile updated successfully.")),
      );
    } on FirebaseAuthException catch (e) {
      // Error updating profile
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.message ?? 'Profile Update failed.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    _fullNameController.text = user?.displayName ?? '';
    _emailController.text = user?.email ?? '';
    _phoneController.text = user?.phoneNumber ?? '';
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(top: 50), // Add spacing at the top
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: Column(
                      children: [
                        const SizedBox(height: FormHeight),
                        Text(
                          "Edit Profile",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Stack(
                          children: [
                            SizedBox(
                              width: 120,
                              height: 120,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: const Image(
                                    image: AssetImage(ProfileImage)),
                              ),
                            ),
                          ],
                        ),
                        Form(
                          child: Column(
                            children: [
                              TextFormField(
                                controller: _fullNameController,
                                decoration: const InputDecoration(
                                  label: Text("Full Name"),
                                  prefixIcon: Icon(
                                      Icons.person_outline_outlined,
                                      color: PrimaryColor),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(100.0),
                                    ),
                                    borderSide: BorderSide(color: PrimaryColor),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                controller: _emailController,
                                decoration: const InputDecoration(
                                  label: Text("Email"),
                                  prefixIcon: Icon(Icons.email_outlined,
                                      color: PrimaryColor),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(100.0),
                                    ),
                                    borderSide: BorderSide(color: PrimaryColor),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                controller: _phoneController,
                                decoration: const InputDecoration(
                                  label: Text("Phone Number"),
                                  prefixIcon: Icon(Icons.numbers_outlined,
                                      color: PrimaryColor),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: PrimaryColor),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(100.0),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                controller: _passwordController,
                                decoration: const InputDecoration(
                                  label: Text("Password"),
                                  prefixIcon: Icon(Icons.fingerprint,
                                      color: PrimaryColor),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: PrimaryColor),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(100.0),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: FormHeight),
                              SizedBox(
                                width: double.infinity,
                                height: FormHeight + 20,
                                child: ElevatedButton(
                                  onPressed: () {
                                    updateProfile(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: PrimaryColor,
                                      side: BorderSide.none,
                                      shape: const StadiumBorder()),
                                  child: const Text("Update Profile",
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ),
                              const SizedBox(height: FormHeight),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                        text: "Joined ",
                                        style: TextStyle(fontSize: 12),
                                        children: [
                                          TextSpan(
                                            text: JoinedAt,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ]),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Bottom Navigation Menu
          BottomNavigationMenu(),
        ],
      ),
    );
  }
}
