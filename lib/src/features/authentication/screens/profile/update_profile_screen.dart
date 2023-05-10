import 'package:flutter/material.dart';
import 'package:ifilter_mobile_application/src/constants/colors.dart';
import 'package:ifilter_mobile_application/src/constants/image_string.dart';
import 'package:ifilter_mobile_application/src/constants/text_strings.dart';
import 'package:ifilter_mobile_application/src/constants/sizes.dart';
import 'profile_screen.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfileScreen()),
          ),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Image(image: AssetImage(ProfileImage)),
                      ),
                    ),
                    /*  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: PrimaryColor),
                        child: const Icon(
                          LineAwesomeIcons.pencil,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    )*/
                  ],
                ),
                SizedBox(height: 50),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text("Montaha Jomaa"),
                          prefixIcon: Icon(Icons.person_outline_outlined,
                              color: PrimaryColor),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(100.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: const InputDecoration(
                            label: Text("montahajomaa4@gmail.com"),
                            prefixIcon:
                                Icon(Icons.email_outlined, color: PrimaryColor),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(100.0),
                              ),
                            )),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text("50 751 818"),
                          prefixIcon:
                              Icon(Icons.numbers_outlined, color: PrimaryColor),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(100.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text("********"),
                          prefixIcon:
                              Icon(Icons.fingerprint, color: PrimaryColor),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(100.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: FormHeight),
                      SizedBox(
                        width: double.infinity,
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
                      const SizedBox(height: FormHeight),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.redAccent.withOpacity(0.1),
                                elevation: 0,
                                foregroundColor: Colors.red,
                                shape: const StadiumBorder(),
                                side: BorderSide.none),
                            child: const Text("Delete"),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
