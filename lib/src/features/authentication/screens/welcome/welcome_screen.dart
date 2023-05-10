import 'package:flutter/material.dart';
import 'package:ifilter_mobile_application/src/features/authentication/screens/login/login_screen.dart';
import '../../../../constants/image_string.dart';
import '../../../../constants/text_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/colors.dart';
import 'package:ifilter_mobile_application/src/features/authentication/screens/signup/signup_screen.dart';
import '../../../../features/authentication/screens/profile/profile_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage(WelcomeScreenImage),
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            padding: EdgeInsets.all(DefaultSize),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      WelcomeTitle,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 52,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      WelcomeSubTitle,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.6),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen()),
                        ),
                        style: OutlinedButton.styleFrom(
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          foregroundColor: Colors.white,
                          side: BorderSide(color: Colors.white),
                          padding: EdgeInsets.symmetric(vertical: ButtonHeight),
                        ),
                        child: Text(Login.toUpperCase()),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()),
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          foregroundColor: PrimaryColor,
                          backgroundColor: Colors.white,
                          side: BorderSide(color: Colors.white),
                          padding: EdgeInsets.symmetric(vertical: ButtonHeight),
                        ),
                        child: Text(Signup.toUpperCase()),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
