import 'package:flutter/material.dart';

class CallsPage extends StatefulWidget {
  @override
  _CallsPageState createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff080F13),
        title: Text(
          "Calls",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt_outlined, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search,color: Colors.white,),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/profile.png"),
            ),
            title: Text(
              "John Doe",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Yesterday, 5:00 PM",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Icon(
              Icons.call_outlined,
            ),
            onTap: () {
              // Action when a call is tapped
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/profile.png"),
            ),
            title: Text(
              "Jane Smith",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Yesterday, 4:30 PM",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Icon(
              Icons.call_outlined,
            ),
            onTap: () {
              // Action when a call is tapped
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/profile.png"),
            ),
            title: Text(
              "Alice Johnson",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Yesterday, 3:20 PM",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Icon(
              Icons.call_outlined,
            ),
            onTap: () {
              // Action when a call is tapped
            },
          ),
        ],
      ),
      backgroundColor: Color(0xff080F13),
      floatingActionButton: Stack(
          children: [
            // Pencil Button (Positioned above the camera button)
            Positioned(
              bottom: 10,
              right: 4,
              child: FloatingActionButton(
                backgroundColor: Color(0xff25D366),
                onPressed: () {
                  // Pencil button functionality
                },
                child: Icon(Icons.add_ic_call, color: Colors.black),
              ),
            ),
          ]
      ),
    );
  }
}
