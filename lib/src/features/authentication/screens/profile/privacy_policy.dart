import 'package:flutter/material.dart';

class PrivacyPolicy extends StatefulWidget {
  @override
  _PrivacyPolicy createState() => _PrivacyPolicy();
}

class _PrivacyPolicy extends State<PrivacyPolicy> {
  bool _consentGiven = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "By using our solution, and clicking this button, users consent to the collection, storage, and processing of their data as described in this privacy policy.",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Switch(
                  activeColor: Colors.green,
                  value: _consentGiven,
                  onChanged: (value) {
                    setState(() {
                      _consentGiven = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      '1. Data Collection',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 5.0),
                Text(
                  '''1.2. We collect and store the water parameter data, fertilizer consumption data, and weather data obtained from the remote monitoring system.
1.2. We use this data solely for the purpose of providing the services and features of our solution, including real-time monitoring, data analytics, and personalized support.''',
                  style: TextStyle(fontSize: 10.0),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      '2. Data Usage',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 5.0),
                Text(
                  '''2.1. The collected data is used to analyze water quality, fertilizer consumption patterns, and weather conditions to provide insights and recommendations to users.
2.2. We may use aggregated and anonymized data for research and development purposes to improve the performance and functionality of our solution.''',
                  style: TextStyle(fontSize: 10.0),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      '3. Data Protection',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 5.0),
                Text(
                  '''3.1. We implement appropriate security measures to protect the collected data from unauthorized access, disclosure, alteration, or destruction.
3.2. We adhere to industry standards and best practices to safeguard the privacy and security of user data.''',
                  style: TextStyle(fontSize: 10.0),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      '4. Data Sharing',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 5.0),
                Text(
                  '''4.1. We do not sell, trade, or rent users' personal information to third parties for marketing or advertising purposes.
4.2. We may share data with trusted third-party service providers who assist us in delivering the solution and its associated services. These providers are contractually obligated to maintain the confidentiality and security of the data.''',
                  style: TextStyle(fontSize: 10.0),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      '5. User Control',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 5.0),
                Text(
                  '''5.1. Users can request the deletion of their data from our system, subject to legal obligations and retention requirements.''',
                  style: TextStyle(fontSize: 10.0),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      '6. Compliance',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 5.0),
                Text(
                  '''6.1. We comply with applicable data protection and privacy laws and regulations.
6.2. We will notify users in case of any changes to the privacy policy that may impact the collection, usage, or sharing of their data.

''',
                  style: TextStyle(fontSize: 10.0),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
