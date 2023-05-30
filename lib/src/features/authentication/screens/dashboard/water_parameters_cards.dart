import 'package:flutter/material.dart';
import 'package:ifilter_mobile_application/src/constants/colors.dart';

class WaterParametersCards extends StatelessWidget {
  const WaterParametersCards({
    Key? key,
    required this.title,
    required this.value,
    this.cardWidth = 60.0, // Customize the width of the card
    this.cardHeight = 60.0, // Customize the height of the card
  }) : super(key: key);

  final String title;
  final String value;
  final double cardWidth;
  final double cardHeight;

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
        case 'Ammonium':
          return Icon(Icons.biotech_outlined, color: PrimaryColor, size: 22);
        case 'DO':
          return Icon(Icons.bubble_chart_outlined,
              color: PrimaryColor, size: 22);
        case 'TSS':
          return Icon(Icons.blur_on_outlined, color: PrimaryColor, size: 22);
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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Colors.blue[50],
      child: SizedBox(
        width: cardWidth,
        height: cardHeight,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 15),
              child: Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        padding: EdgeInsets.all(2),
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: getIcon(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 0),
              child: Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            value,
                            style: TextStyle(
                              color: Colors.blue[200],
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            title,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
