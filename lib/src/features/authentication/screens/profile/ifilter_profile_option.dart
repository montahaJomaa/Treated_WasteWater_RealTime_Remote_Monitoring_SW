import 'package:flutter/material.dart';

class iFilterProfileOption extends StatelessWidget {
  const iFilterProfileOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: MobileDashboard(),
      ),
    );
  }
}

class WaterParametersOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace with actual data or widgets representing water parameters
    return Container(
      child: Text('Water Parameters Overview'),
    );
  }
}

class AlertsNotifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace with actual implementation of alerts and notifications
    return Container(
      child: Text('Alerts and Notifications'),
    );
  }
}

class HistoricalDataTrends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace with actual implementation of historical data and trends
    return Container(
      child: Text('Historical Data and Trends'),
    );
  }
}

class FertilizerManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace with actual implementation of fertilizer management
    return Container(
      child: Text('Fertilizer Management'),
    );
  }
}

class WeatherDataIntegration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace with actual implementation of weather data integration
    return Container(
      child: Text('Weather Data Integration'),
    );
  }
}

class VisualizationTools extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace with actual implementation of visualization tools
    return Container(
      child: Text('Visualization Tools'),
    );
  }
}

class MapView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace with actual implementation of map view
    return Container(
      child: Text('Map View'),
    );
  }
}

class UserSupportHelpCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace with actual implementation of user support and help center
    return Container(
      child: Text('User Support and Help Center'),
    );
  }
}

class MobileDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            WaterParametersOverview(),
            AlertsNotifications(),
            HistoricalDataTrends(),
            FertilizerManagement(),
            WeatherDataIntegration(),
            VisualizationTools(),
            MapView(),
            UserSupportHelpCenter(),
          ],
        ),
      ),
    );
  }
}
