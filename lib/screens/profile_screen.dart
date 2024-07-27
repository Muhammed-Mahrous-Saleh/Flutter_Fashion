import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Custom behavior for the back button
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(child: Text('Profile Screen')),
    );
  }
}
