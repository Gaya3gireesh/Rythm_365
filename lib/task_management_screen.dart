import 'package:flutter/material.dart';

class TaskManagementScreen extends StatelessWidget {
  const TaskManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task Management"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Manage your tasks here",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // You can integrate task management functionality here
            ElevatedButton(
              onPressed: () {
                // Handle task management logic
              },
              child: Text("Add New Task"),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle viewing tasks
              },
              child: Text("View Existing Tasks"),
            ),
          ],
        ),
      ),
    );
  }
}
