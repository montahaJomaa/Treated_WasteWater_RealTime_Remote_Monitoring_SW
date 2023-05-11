import 'package:flutter/material.dart';
import 'package:ifilter_mobile_application/src/constants/sizes.dart';
import 'package:ifilter_mobile_application/src/constants/colors.dart';
import 'package:ifilter_mobile_application/src/common_widgets/bottom_navigation_menu/bottom_navigation_menu.dart';
import 'health_check_sensros/health_check_sensors_pH.dart';

class HealthCheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(DefaultSize),
                    child: Column(
                      children: [
                        const SizedBox(height: FormHeight),
                        Text(
                          "Health Check",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(height: 20),
                            HealthCheckMenu(
                              text: "pH",
                              icon: Icons.science_outlined,
                              press: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        HealthCheckPHSensor()),
                              ),
                            ),
                            HealthCheckMenu(
                              text: "Oxidation-Reduction Potential",
                              icon: Icons.timeline_outlined,
                              press: () {},
                            ),
                            HealthCheckMenu(
                              text: "Dissolved Oxygen",
                              icon: Icons.bubble_chart_outlined,
                              press: () {},
                            ),
                            HealthCheckMenu(
                              text: "Turbidity and Suspended Solids",
                              icon: Icons.grain_outlined,
                              press: () {},
                            ),
                            HealthCheckMenu(
                              text: "Conductivity",
                              icon: Icons.electrical_services_outlined,
                              press: () {},
                            ),
                            HealthCheckMenu(
                              text: "Ammonium",
                              icon: Icons.biotech_outlined,
                              press: () {},
                            ),
                            HealthCheckMenu(
                              text: "Chemical Oxygen Demand",
                              icon: Icons.waves_outlined,
                              press: () {},
                            ),
                            HealthCheckMenu(
                              text: "Chlorophyll",
                              icon: Icons.eco_outlined,
                              press: () {},
                            ),
                            HealthCheckMenu(
                              text: "Chloride",
                              icon: Icons.local_drink_outlined,
                              press: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
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

class HealthCheckMenu extends StatelessWidget {
  const HealthCheckMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Color(0xFFF5F6F9),
        ),
        onPressed: press,
        child: Row(
          children: [
            Icon(
              icon,
              color: PrimaryColor,
              size: 22,
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  color: SecondaryColor,
                ),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: PrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
