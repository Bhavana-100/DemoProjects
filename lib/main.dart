import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final textColor = Colors.white; 
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer Navigation Example"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.close, size: 20, color: textColor),
                      Icon(Icons.settings, size: 20, color: textColor),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/images/dog1.jpeg"),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      const Text(
                        "Lilly",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        "Developer",
                        style: TextStyle(fontSize: 14, color: textColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.favorite, size: 20, color: textColor),
                      Icon(Icons.widgets, size: 20, color: textColor),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(), 
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: const Icon(Icons.dashboard),
                    title: const Text("Feed"),
                    selected: _selectedIndex == 0,
                    selectedTileColor: Colors.blue,
                    onTap: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                      // Navigator.of(context).pop(); 
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.calendar_view_day_rounded),
                    title: const Text("Events"),
                    selected: _selectedIndex == 1,
                    selectedTileColor: Colors.blue,
                    onTap: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                      // Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.camera),
                    title: const Text("Post"),
                    selected: _selectedIndex == 2,
                    selectedTileColor: Colors.blue,
                    onTap: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                      //Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.notification_add),
                    title: const Text("Notification"),
                    trailing: const Icon(Icons.three_k),
                    selected: _selectedIndex == 3,
                    selectedTileColor: Colors.blue,
                    onTap: () {
                      setState(() {
                        _selectedIndex = 3;
                      });
                      // Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text("Account"),
                    selected: _selectedIndex == 4,
                    selectedTileColor: Colors.blue,
                    onTap: () {
                      setState(() {
                        _selectedIndex = 4;
                      });
                      // Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text("Log out"),
                    selected: _selectedIndex == 5,
                    selectedTileColor: Colors.blue,
                    onTap: () {
                      setState(() {
                        _selectedIndex = 5;
                      });
                      // Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          "Home Screen",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
