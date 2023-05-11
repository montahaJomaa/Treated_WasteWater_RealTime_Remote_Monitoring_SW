import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ifilter_mobile_application/src/constants/image_string.dart';
import 'water_parameters_cards.dart';
import '../../../../features/authentication/screens/profile/profile_screen.dart';
import '../../../../features/authentication/screens/notifications/notifcations_screen.dart';
import '../../../../features/authentication/screens/health_check/health_check.dart';
import 'package:ifilter_mobile_application/src/common_widgets/bottom_navigation_menu/bottom_navigation_menu.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
            decoration: BoxDecoration(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Dashboard",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  'Water Quality & Irrigation Safety',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Center(
                        child: Image.asset(
                          DrinkingSafety,
                          fit: BoxFit.cover,
                          width: 200,
                          height: 200,
                        ),
                      ),
                      Center(
                        child: Text(
                          '57%',
                          style: TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1.5,
                mainAxisSpacing: 0.0,
                crossAxisSpacing: 10.0,
                padding: EdgeInsets.symmetric(horizontal: 60.0),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  WaterParametersCards(title: 'pH', value: '7.2'),
                  WaterParametersCards(title: 'COD', value: '20 mg/L'),
                  WaterParametersCards(title: 'Conductivity', value: '3.10¨^4'),
                  WaterParametersCards(title: 'DO', value: '6.0 mg/L'),
                  WaterParametersCards(title: 'Turbidity', value: '250 mg/L'),
                  WaterParametersCards(title: 'SS', value: '10 mg/L'),
                  WaterParametersCards(title: 'Ammonium', value: '3.10¨^4'),
                  WaterParametersCards(title: 'Chlorophyll', value: '6.0 mg/L'),
                  WaterParametersCards(title: 'Chloride', value: '250 mg/L'),
                  WaterParametersCards(title: 'ORP', value: '10 mg/L'),
                ],
              ),
            ),
          ),
          SizedBox(height: 40),
          BottomNavigationMenu(), // Bottom Navigation Menu
        ],
      ),
    );
  }
}
