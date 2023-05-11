import 'package:flutter/material.dart';
import '../../../../features/authentication/screens/profile/profile_screen.dart';
import '../../../../features/authentication/screens/health_check/health_check.dart';
import 'package:ifilter_mobile_application/src/features/authentication/screens/dashboard/dashboard_screen.dart';
import 'package:ifilter_mobile_application/src/common_widgets/bottom_navigation_menu/bottom_navigation_menu.dart';
import 'package:ifilter_mobile_application/src/constants/sizes.dart';

class NotificationsPage extends StatelessWidget {
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
    // Add any content that you want to display on the notifications page
  }
}
