import 'package:flutter/material.dart';

class CommunityEventsScreen extends StatelessWidget {
  const CommunityEventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Community Events"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Upcoming Community Events",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // You can integrate the list of events functionality here
            ElevatedButton(
              onPressed: () {
                // Handle viewing events
              },
              child: Text("View Events"),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle registering for an event
              },
              child: Text("Register for an Event"),
            ),
          ],
        ),
      ),
    );
  }
}
