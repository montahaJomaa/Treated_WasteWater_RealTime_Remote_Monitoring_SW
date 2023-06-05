import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        elevation: 0,
        title: Text('Contact Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact Information',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('contact.smartlogger@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              subtitle: Text('+216 25 605 867'),
            ),
            SizedBox(height: 32),
            Text(
              'Address',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Street'),
              subtitle: Text('Yasser Arafat,Sahloul'),
            ),
            ListTile(
              leading: Icon(Icons.location_city),
              title: Text('City'),
              subtitle: Text('Sousse'),
            ),
            ListTile(
              leading: Icon(Icons.pin_drop),
              title: Text('Postal Code'),
              subtitle: Text('4057'),
            ),
          ],
        ),
      ),
    );
  }
}
