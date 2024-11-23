import 'package:flutter/material.dart';
import 'details_page.dart'; // Import the details page

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Text('To Do'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios), // Add arrow icon
            onPressed: () {
              // Navigate to the next page when arrow icon is tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const DetailsPage(), // Navigate to DetailsPage
                ),
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Your To-Do List Goes Here',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
