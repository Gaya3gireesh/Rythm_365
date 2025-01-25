import 'package:flutter/material.dart';

class ReviewResultsScreen extends StatelessWidget {
  const ReviewResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Review Results"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Your review results and feedback",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // You can integrate review results or feedback functionality here
            ElevatedButton(
              onPressed: () {
                // Handle viewing results logic
              },
              child: Text("View Results"),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle viewing feedback
              },
              child: Text("View Feedback"),
            ),
          ],
        ),
      ),
    );
  }
}
