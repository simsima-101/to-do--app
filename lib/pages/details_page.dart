import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Page'),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Details Page!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
