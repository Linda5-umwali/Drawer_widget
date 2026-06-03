import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ALU Student Portal',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ALU Student Portal"),
      ),

      drawer: Drawer(
        backgroundColor: Colors.blue.shade50,
        width: 280,
        elevation: 20,

        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                "Welcome Student",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),

            const ListTile(
              leading: Icon(Icons.dashboard),
              title: Text("Dashboard"),
            ),

            const ListTile(
              leading: Icon(Icons.book),
              title: Text("Courses"),
            ),

            const ListTile(
              leading: Icon(Icons.directions_bus),
              title: Text("Bus Service"),
            ),

            const ListTile(
              leading: Icon(Icons.assignment),
              title: Text("Assignments"),
            ),

            const ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
          ],
        ),
      ),

      body: const Center(
        child: Text(
          "Tap the menu icon to open the Drawer",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
