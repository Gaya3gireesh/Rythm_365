import 'package:flutter/material.dart';

class OrganizationHomeScreen extends StatelessWidget {
  const OrganizationHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Organization Home"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/create_event');
              },
              child: Text("Create Event"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/manage_individuals');
              },
              child: Text("Manage Individuals"),
            ),
          ],
        ),
      ),
    );
  }
}
