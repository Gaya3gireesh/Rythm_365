import 'package:flutter/material.dart';

class CreateEventScreen extends StatelessWidget {
  const CreateEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Event"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Event Name'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Event Description'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle event creation
              },
              child: Text("Create Event"),
            ),
          ],
        ),
      ),
    );
  }
}
