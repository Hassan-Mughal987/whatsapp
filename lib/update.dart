import 'package:flutter/material.dart';
import 'call.dart';
import 'homescreen.dart';
import 'communities.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UpdatesPage(),
    );
  }
}

class UpdatesPage extends StatefulWidget {
  @override
  _UpdatesPageState createState() => _UpdatesPageState();
}

class _UpdatesPageState extends State<UpdatesPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff080F13),
        title: Text(
          "Updates",
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
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Color(0xff080F13),
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 270.0),
            child: Text(
              'Status',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              color: Color(0xff080F13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        _buildStatusTile('Add status', Icons.add),
                        _buildStatusTile('ABC'),
                        _buildStatusTile('DEF'),
                        _buildStatusTile('GHI'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Channels',
                          style: TextStyle(
                              color: Colors.white, fontSize: 19,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 14.0), // Add margin to the right
                          child: Container(
                            width: 80, // Fixed width for the button
                            height: 30, // Fixed height for the button
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff2A2F32),
                                shape: StadiumBorder(),
                                padding: EdgeInsets.zero, // Remove internal padding
                                minimumSize: Size.zero, // Ensure size is strictly defined by Container
                              ),
                              child: FittedBox(
                                fit: BoxFit.scaleDown, // Ensures the text scales down to fit
                                child: Text(
                                  'Explore',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14, // Adjust size as needed
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey.shade700,
                      child: Text(
                          'C',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    title: Text(
                      'Channel',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'Channels',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  _buildChannelTile('Facebook', '299M followers'),
                  _buildChannelTile('Instagram', '499M followers'),
                  _buildChannelTile('WhatsApp', '209M followers'),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Stack(
        children: [
          // Pencil Button (Positioned above the camera button)
          Positioned(
            bottom: 90,
            right: 12,
            child: SizedBox(
              width: 40, // Set width for the pencil button
              height: 40, // Set height for the pencil button
              child: FloatingActionButton(
                backgroundColor: Color(0xff343a40),
                onPressed: () {
                  // Pencil button functionality
                },
                child: Icon(Icons.edit, color: Colors.white),
              ),
            ),
          ),
          // Camera Button (At the bottom right corner)
          Positioned(
            bottom: 10,
            right: 4,
              child: FloatingActionButton(
                backgroundColor: Color(0xff25D366),
                onPressed: () {
                  // Camera button functionality
                },
                child: Icon(
                  Icons.add_a_photo,
                  color: Colors.black,
                ),
              ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusTile(String title, [IconData? icon]) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey.shade800,
            child: icon != null
                ? Icon(icon, color: Color(0xff25D366), size: 30)
                : null,
          ),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildChannelTile(String title, String followers) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey.shade800,
        child: Icon(Icons.verified, color: Color(0xff25D366)),
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        followers,
        style: TextStyle(color: Colors.grey),
      ),
      trailing: Padding(
        padding: const EdgeInsets.only(right: 0.0), // Add margin to the right
        child: Container(
          width: 80, // Fixed width for the button
          height: 30, // Fixed height for the button
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff044a2d),
              shape: StadiumBorder(),
              padding: EdgeInsets.zero, // Remove internal padding
              minimumSize: Size.zero, // Ensure size is strictly defined by Container
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown, // Ensures the text scales down to fit
              child: Text(
                'Follow',
                style: TextStyle(
                  color: Color(0xffbfffd3),
                  fontSize: 14, // Adjust size as needed
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
