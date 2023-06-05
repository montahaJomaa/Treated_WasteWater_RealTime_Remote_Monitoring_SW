import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ifilter_mobile_application/src/constants/colors.dart';
import 'package:ifilter_mobile_application/src/constants/image_string.dart';
import 'package:ifilter_mobile_application/src/constants/text_strings.dart';
import 'package:ifilter_mobile_application/src/constants/sizes.dart';
import 'package:ifilter_mobile_application/src/features/authentication/screens/profile/contact_us.dart';
import 'package:ifilter_mobile_application/src/features/authentication/screens/profile/privacy_policy.dart';
import 'widgets/profile_menu.dart';
import 'update_profile_screen.dart';
import 'package:ifilter_mobile_application/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:ifilter_mobile_application/src/common_widgets/bottom_navigation_menu/bottom_navigation_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  Future<void> deleteAccount(BuildContext context) async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        await user.delete();
        // Account deletion successful
        print('User account deleted successfully');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Account deleted successfully.")),
        );
      }
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    } on FirebaseAuthException catch (e) {
      // Error deleting account
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.message ?? 'Account deletion failed.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(top: 40), // Add spacing at the top
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Column(
                      children: [
                        const SizedBox(height: FormHeight),
                        Text(
                          "Profile",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image(
                              image: AssetImage(ProfileImage),
                            ),
                          ),
                        ),
                        /* const SizedBox(height: 10),
                        Text(ProfileHeading,
                            style: Theme.of(context).textTheme.headline5),
                        Text(ProfileSubHeading,
                            style: Theme.of(context).textTheme.bodyText2),*/
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 200,
                          height: FormHeight + 15,
                          child: ElevatedButton(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UpdateProfileScreen()),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: PrimaryColor,
                                side: BorderSide.none,
                                shape: const StadiumBorder()),
                            child: const Text(EditProfile,
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Divider(color: Colors.grey),

                        // MENU
                        ProfileMenuWidget(
                          title: "Privacy Policy",
                          icon: Icons.lock_outline,
                          onPress: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PrivacyPolicy()),
                          ),
                        ),
                        /*ProfileMenuWidget(
                            title: "iFILTER",
                            icon: Icons.water_drop_outlined,
                            onPress: () {}),
                        const SizedBox(height: 15),*/
                        const Divider(color: Colors.grey),
                        ProfileMenuWidget(
                          title: "Contact Us",
                          icon: Icons.connect_without_contact,
                          onPress: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ContactUs()),
                          ),
                        ),
                        ProfileMenuWidget(
                          title: "Log out",
                          icon: Icons.logout_outlined,
                          textColor: Colors.red,
                          endIcon: false,
                          onPress: () async {
                            await FirebaseAuth.instance.signOut();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WelcomeScreen()),
                            );
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: ElevatedButton(
                                onPressed: () {
                                  deleteAccount(context);
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.redAccent.withOpacity(0.1),
                                    elevation: 0,
                                    foregroundColor: Colors.red,
                                    shape: const StadiumBorder(),
                                    side: BorderSide.none),
                                child: const Text("Delete Profile"),
                              ),
                            ),
                          ],
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
