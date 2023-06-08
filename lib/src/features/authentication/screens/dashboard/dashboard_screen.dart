import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ifilter_mobile_application/src/constants/image_string.dart';
import 'water_parameters_cards.dart';
import '../../../../features/authentication/screens/profile/profile_screen.dart';
import '../../../../features/authentication/screens/notifications/notifcations_screen.dart';
import 'package:ifilter_mobile_application/src/common_widgets/bottom_navigation_menu/bottom_navigation_menu.dart';
import 'dart:ui';
import 'help.dart';
//import 'health_check/health_check_element/health_check_pH.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Map<dynamic, dynamic> data = {
    'pH': '--',
    'Ammonium': '--',
    'COD': '--',
    'Conductivity': '--',
    'Chloride': '--',
    'DO': '--',
    'TSS': '--',
    'Chlorophyll': '--',
    'ORP': '--',
  };

  @override
  void initState() {
    super.initState();

    final DatabaseReference databaseReference = FirebaseDatabase.instance
        .ref()
        .child('ifilter-33bac-default-rtdb')
        .child('UsersData')
        .child('xBGWvff1vyUkF0gTDe2t99jungL2');
    databaseReference.onValue.listen((DatabaseEvent event) {
      setState(() {
        data = event.snapshot.value as Map<dynamic, dynamic>;
      });

      print(data.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50.0),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Water Quality Preview",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(width: 15),
                              Container(
                                child: IconButton(
                                  onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Help()),
                                  ),
                                  icon: Icon(
                                    Icons.help_outline,
                                    color: Colors.grey[400],
                                  ),
                                  iconSize: 30.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    width: 2,
                                    color: _getBorderColor(
                                        0.2), // Replace with the desired progress value
                                  ),
                                ),
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        SizedBox(
                                          width: 80,
                                          height: 80,
                                          child: CircularProgressIndicator(
                                            strokeWidth: 5,
                                            value:
                                                0.2, //  To determine the desired progress value
                                            backgroundColor: Colors.grey,
                                            valueColor: AlwaysStoppedAnimation<
                                                    Color>(
                                                _getProgressColor(
                                                    0.2)), // Replace with your desired progress value
                                          ),
                                        ),
                                        Text(
                                          "20%", // Replace with your desired text
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 15),
                                    // To adjust the spacing between the progress circle and the "Irrigation Safety" text
                                    Text(
                                      "Overall Irrigation Safety",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 30),
                                    // To adjust the spacing between the "Irrigation Safety" text and the "View more" button
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 30),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment
                                    .centerLeft, // Align text to the left
                                child: Text(
                                  'Water Parameters',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                              GridView.count(
                                crossAxisCount: 3,
                                mainAxisSpacing: 0.0,
                                crossAxisSpacing: 0.0,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: WaterParametersCards(
                                        title: 'pH', value: '7.2'),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      // Handle navigation to the desired screen for pH
                                    },
                                    child: WaterParametersCards(
                                        title: 'COD',
                                        value: data['COD'].toString()),
                                  ),
                                  WaterParametersCards(
                                      title: 'Conductivity',
                                      value: data['Conductivity'].toString()),
                                  WaterParametersCards(
                                      title: 'DO',
                                      value: data['DO'].toString()),
                                  WaterParametersCards(
                                      title: 'TSS',
                                      value: data['TSS'].toString()),
                                  WaterParametersCards(
                                      title: 'Ammonium',
                                      value: data['Ammonium'].toString()),
                                  WaterParametersCards(
                                      title: 'Chlorophyll',
                                      value: data['Chlorophyll'].toString()),
                                  WaterParametersCards(
                                      title: 'Chloride',
                                      value: data['Chloride'].toString()),
                                  WaterParametersCards(
                                      title: 'ORP',
                                      value: data['ORP'].toString()),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          BottomNavigationMenu(), // Bottom Navigation Menu
        ],
      ),
    );
  }
}

Color _getBorderColor(double progress) {
  if (progress < 0.3) {
    return Colors.red;
  } else if (progress < 0.5) {
    return Colors.yellow;
  } else {
    return Colors.green;
  }
}

Color _getProgressColor(double progress) {
  if (progress < 0.3) {
    return Colors.red;
  } else if (progress < 0.5) {
    return Colors.yellow;
  } else {
    return Colors.green;
  }
}
