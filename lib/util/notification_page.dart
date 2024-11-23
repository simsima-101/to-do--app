import 'package:flutter/material.dart';
import 'notification_service.dart'; // Import the NotificationService

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  void initState() {
    super.initState();
    // Initialize notification service
    NotificationService().initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show notifications'),
          onPressed: () {
            NotificationService().showNotification(
              title: 'Sample title',
              body: 'It works!',
            );
          },
        ),
      ),
    );
  }
}
