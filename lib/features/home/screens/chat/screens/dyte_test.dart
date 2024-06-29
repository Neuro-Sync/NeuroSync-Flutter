import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String meetingUrl =
      "https://example.com/meeting"; // Replace with your meeting URL

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Online Meeting'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _launchMeeting,
          child: Text('Join Meeting'),
        ),
      ),
    );
  }

  void _launchMeeting() async {
    if (await canLaunch(meetingUrl)) {
      await launch(meetingUrl);
    } else {
      throw 'Could not launch $meetingUrl';
    }
  }
}
