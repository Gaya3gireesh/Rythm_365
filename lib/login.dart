import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Select Login Type",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IndividualLoginScreen(),
                  ),
                );
              },
              child: Text("Login as Individual"),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrganizationLoginScreen(),
                  ),
                );
              },
              child: Text("Login as Organization"),
            ),
          ],
        ),
      ),
    );
  }
}

class IndividualLoginScreen extends StatelessWidget {
  const IndividualLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Individual Login"),
      ),
      body: Center(
        child: Text("Individual Login Screen Content"),
      ),
    );
  }
}

class OrganizationLoginScreen extends StatelessWidget {
  const OrganizationLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Organization Login"),
      ),
      body: Center(
        child: Text("Organization Login Screen Content"),
      ),
    );
  }
}
