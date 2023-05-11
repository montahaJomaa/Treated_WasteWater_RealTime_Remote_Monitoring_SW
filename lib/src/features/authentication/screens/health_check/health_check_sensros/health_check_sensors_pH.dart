import 'package:flutter/material.dart';
import 'package:ifilter_mobile_application/src/common_widgets/bottom_navigation_menu/bottom_navigation_menu.dart';

class HealthCheckPHSensor extends StatelessWidget {
  const HealthCheckPHSensor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: SingleChildScrollView(),
        ),
        BottomNavigationMenu(), // Bottom Navigation Menu
      ],
    ));
  }
}
