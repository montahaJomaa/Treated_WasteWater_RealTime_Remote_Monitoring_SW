import 'package:flutter/material.dart';
import 'package:ifilter_mobile_application/src/common_widgets/bottom_navigation_menu/bottom_navigation_menu.dart';
import 'package:ifilter_mobile_application/src/constants/image_string.dart';
import 'package:ifilter_mobile_application/src/constants/colors.dart';
import 'package:ifilter_mobile_application/src/constants/colors.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';

class HealthCheckpH extends StatefulWidget {
  const HealthCheckpH({Key? key}) : super(key: key);

  @override
  State<HealthCheckpH> createState() => _HealthCheckpHState();
}

class _HealthCheckpHState extends State<HealthCheckpH> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            child: const Text(
              "Health Check",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            children: const [
              SensorOverview(),
              UpComingMaintenance(),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: SizedBox(
              height: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Real Time Analytics",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const ExpenseGraphDesign(),
                  const CircleProgressChart(),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          BottomNavigationMenu(),
        ],
      ),
    );
  }
}

class SensorOverview extends StatefulWidget {
  const SensorOverview({Key? key}) : super(key: key);

  @override
  State<SensorOverview> createState() => _SensorOverviewState();
}

class _SensorOverviewState extends State<SensorOverview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      height: 220,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: PrimaryColor,
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Align children to the left
        children: [
          const Text(
            "pH Sensor Overview",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          SizedBox(height: 15),
          Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align texts to the left
            children: const [
              Text(
                "Installation Date",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "01/02/2023",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 9,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Warranty Expiration",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "01/02/2023",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 9,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Sensor Life Expectancy",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "01/02/2023",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 9,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class UpComingMaintenance extends StatefulWidget {
  const UpComingMaintenance({Key? key}) : super(key: key);

  @override
  State<UpComingMaintenance> createState() => _UpComingMaintenanceState();
}

class _UpComingMaintenanceState extends State<UpComingMaintenance> {
  final List itemList = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  String? selectedValue = "August";
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 250,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  UpcomingMaintenance(
                    context,
                    Icons.arrow_downward,
                    "Battery Change",
                    DateTime(2023, 8, 12),
                    Colors.white,
                    Colors.white,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  UpcomingMaintenance(
                    context,
                    Icons.arrow_downward,
                    "Maintenance",
                    DateTime(2023, 8, 12),
                    Colors.white,
                    Colors.white,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  UpcomingMaintenance(
                    context,
                    Icons.arrow_downward,
                    "Upcoming Calibration",
                    DateTime(2023, 8, 12),
                    Colors.white,
                    Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 140,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Day",
                          style: TextStyle(
                            color: PrimaryColor,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "Week",
                          style: TextStyle(
                            color: PrimaryColor,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "Month",
                          style: TextStyle(
                            color: PrimaryColor,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      height: 20,
                      width: 144,
                      decoration: BoxDecoration(
                        color: PrimaryColor,
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          value: selectedValue,
                          dropdownColor: PrimaryColor,
                          items:
                              itemList.map<DropdownMenuItem<String>>((value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget UpcomingMaintenance(BuildContext context, IconData icon, String text,
      DateTime date, Color color, Color textColor) {
    DateTime date = DateTime(2023, 8, 12);
    String formattedDate = DateFormat('yyyy-MM-dd').format(date);
    return Container(
      height: 50,
      width: 150,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      decoration: BoxDecoration(
        color: PrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                //textAlign: TextAlign.center,
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 11,
                ),
              ),
              Text(
                //textAlign: TextAlign.center,
                formattedDate,
                style: TextStyle(
                  color: textColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ExpenseGraphDesign extends StatefulWidget {
  const ExpenseGraphDesign({Key? key}) : super(key: key);

  @override
  State<ExpenseGraphDesign> createState() => _ExpenseGraphDesignState();
}

class _ExpenseGraphDesignState extends State<ExpenseGraphDesign> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 200,
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: 14,
          minY: 0,
          maxY: 14,
          borderData: FlBorderData(
            border: Border.all(width: 0), // Set border width to 0
          ),
          //backgroundColor: PrimaryColor,
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 4),
                FlSpot(1, 6),
                FlSpot(2, 8),
                FlSpot(3, 6.2),
                FlSpot(4, 6),
                FlSpot(5, 8),
                FlSpot(6, 13),
                FlSpot(7, 7),
                FlSpot(8, 6),
                FlSpot(9, 7.8),
                FlSpot(10, 8),
                FlSpot(12, 6.2),
                FlSpot(13, 8),
                FlSpot(14, 4),
              ],
              isCurved: true,
              colors: [
                PrimaryColor,
              ],
              barWidth: 3,
              belowBarData: BarAreaData(
                show: true,
                colors: [
                  PrimaryColor.withOpacity(0.2),
                ],
              ),
              dotData: FlDotData(show: false),
            ),
          ],
          gridData: FlGridData(
            show: true,
            drawHorizontalLine: false,
            drawVerticalLine: true,
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: PrimaryColor,
                strokeWidth: 0.8,
              );
            },
          ),
          titlesData: FlTitlesData(
            leftTitles: SideTitles(showTitles: false),
            rightTitles: SideTitles(showTitles: false),
            topTitles: SideTitles(showTitles: false),
            bottomTitles: SideTitles(
              showTitles: true,
              reservedSize: 12,
              getTitles: (value) {
                String text = '';
                switch (value.toInt()) {
                  case 1:
                    text = "1";
                    break;
                  case 2:
                    text = "2";
                    break;
                  case 3:
                    text = "3";
                    break;
                  case 4:
                    text = "4";
                    break;
                  case 5:
                    text = "5";
                    break;
                  case 6:
                    text = "6";
                    break;
                  case 7:
                    text = "7";
                    break;
                  case 8:
                    text = "8";
                    break;
                  case 9:
                    text = "9";
                    break;
                  case 10:
                    text = "10";
                    break;
                  case 11:
                    text = "11";
                    break;
                  case 12:
                    text = "12";
                    break;
                  case 13:
                    text = "13";
                    break;
                  case 14:
                    text = "14";
                    break;
                  default:
                    return '';
                }
                return text;
              },
            ),
          ),
        ),
      ),
    );
  }
}

class CircleProgressChart extends StatefulWidget {
  const CircleProgressChart({Key? key}) : super(key: key);

  @override
  State<CircleProgressChart> createState() => _CircleProgressChartState();
}

class Percentage {
  final int percent;
  final String categories;

  Percentage({required this.percent, required this.categories});
}

class _CircleProgressChartState extends State<CircleProgressChart> {
  final List<Percentage> percentageList = [
    Percentage(percent: 40, categories: 'pH variation last Year'),
    Percentage(percent: 50, categories: 'pH variation last Month'),
    Percentage(percent: 20, categories: 'pH variation last Day'),
    // Add more Percentage objects as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: percentageList.length,
        itemBuilder: (context, index) {
          final percentList = percentageList[index];
          return Center(
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              width: 95,
              decoration: BoxDecoration(
                color: PrimaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  CircularPercentIndicator(
                    radius: 25,
                    lineWidth: 5,
                    percent: percentList.percent / 100,
                    backgroundColor: PrimaryColor,
                    progressColor: Colors.white,
                    backgroundWidth: 1,
                    center: Text(
                      "${percentList.percent}%",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    percentList.categories,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
