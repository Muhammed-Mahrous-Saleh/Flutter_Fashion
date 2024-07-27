import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Custom behavior for the back button
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(child: Text('Notifications Screen')),
    );
  }
}
