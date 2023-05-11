import 'package:flutter/material.dart';
import 'package:ifilter_mobile_application/src/constants/colors.dart';

class WaterParametersCards extends StatelessWidget {
  const WaterParametersCards({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    Icon getIcon() {
      switch (title) {
        case 'pH':
          return Icon(Icons.science_outlined, color: PrimaryColor, size: 22);
        case 'COD':
          return Icon(Icons.waves_outlined, color: PrimaryColor, size: 22);
        case 'Conductivity':
          return Icon(Icons.electrical_services_outlined,
              color: PrimaryColor, size: 22);
        case 'DO':
          return Icon(Icons.bubble_chart_outlined,
              color: PrimaryColor, size: 22);
        case 'Turbidity':
          return Icon(Icons.blur_on_outlined, color: PrimaryColor, size: 22);
        case 'SS':
          return Icon(Icons.grain_outlined, color: PrimaryColor, size: 22);
        case 'Ammonium':
          return Icon(Icons.biotech_outlined, color: PrimaryColor, size: 22);
        case 'Chlorophyll':
          return Icon(Icons.eco_outlined, color: PrimaryColor, size: 22);
        case 'Chloride':
          return Icon(Icons.local_drink_outlined,
              color: PrimaryColor, size: 22);
        case 'ORP':
          return Icon(Icons.timeline_outlined, color: PrimaryColor, size: 22);
        default:
          return Icon(Icons.help_outline, color: PrimaryColor, size: 22);
      }
    }

    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          getIcon(),
          SizedBox(height: 5.0),
          Text(
            title,
            style: TextStyle(
              color: Colors.blue[200],
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            value,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
