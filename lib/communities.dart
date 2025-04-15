import 'package:flutter/material.dart';
import 'call.dart'; // Placeholder for CallsPage
import 'update.dart'; // Placeholder for UpdatesPage
import 'homescreen.dart'; // Placeholder for WhatsAppInterface

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CommunitiesPage(),); }
}

class CommunitiesPage extends StatefulWidget {
  @override
  _CommunitiesPageState createState() => _CommunitiesPageState();
}

class _CommunitiesPageState extends State<CommunitiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff080F13),
        title: Text(
          "Communities",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt_outlined, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(0),
        children: [
          ListTile(
            leading: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 45, // Width of the square/rectangle
                  height: 45, // Height of the square/rectangle
                  decoration: BoxDecoration(
                    color: Colors.grey.shade600, // Background color
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                  child: Icon(Icons.groups, size: 30, color: Colors.white), // Group icon
                ),
                Positioned(
                  bottom: -2, // Adjust position to align the small icon
                  right: -2, // Adjust position to align the small icon
                  child: Container(
                    width: 18, // Size of the green circle
                    height: 18,
                    decoration: BoxDecoration(
                      color: Color(0xff25D366), // Green color
                      shape: BoxShape.circle, // Circular shape
                    ),
                    child: Icon(Icons.add, color: Colors.black, size: 14), // Plus icon
                  ),
                ),
              ],
            ),
            title: Text(
              'New community',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            onTap: () {
              // Action for the list tile
            },
          ),
          Divider(
            color: Colors.black,  // Black divider
            thickness: 8,         // Thickness of 8
            height: 20,            // Space above and below the divider
            indent: 0,            // No left margin
            endIndent: 0,         // No right margin
          ),
        ],
      ),
      backgroundColor: Color(0xff080F13),
    );
  }
}
