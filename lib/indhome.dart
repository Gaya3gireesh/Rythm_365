import 'package:flutter/material.dart';
import 'chatbot_screen.dart';
import 'task_management_screen.dart';
import 'review_results_screen.dart';
import 'community_events_screen.dart';

class IndividualHomeScreen extends StatelessWidget {
  const IndividualHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Individual Home"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatbotScreen()),
                );
              },
              child: Text("Chat with Your Buddy"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TaskManagementScreen()),
                );
              },
              child: Text("Manage Tasks"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ReviewResultsScreen()),
                );
              },
              child: Text("Review Results"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CommunityEventsScreen()),
                );
              },
              child: Text("Community Events"),
            ),
          ],
        ),
      ),
    );
  }
}
