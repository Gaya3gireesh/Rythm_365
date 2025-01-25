import 'package:flutter/material.dart';

class ChatbotScreen extends StatelessWidget {
  const ChatbotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat with Your Buddy"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Chatbot Interaction goes here",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // You can integrate your chatbot interface here
            ElevatedButton(
              onPressed: () {
                // Handle chatbot conversation logic
              },
              child: Text("Start Chat"),
            ),
          ],
        ),
      ),
    );
  }
}
