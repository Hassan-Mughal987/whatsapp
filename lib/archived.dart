import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ArchivedPage(),
    );
  }
}

class ArchivedPage extends StatefulWidget {
  @override
  _ArchivedPageState createState() => _ArchivedPageState();
}

class _ArchivedPageState extends State<ArchivedPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff080F13),
        title: Text(
          "Archived",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Divider(color: Color(0xff2A2F32)),
          Container(
            padding: EdgeInsets.all(0),
            child: Text(
              textAlign: TextAlign.center,
              'These chats stay archived when new messages are received. Tap to change',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Divider(
            color: Color(0xff2A2F32),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.png'), // Replace with your image asset
                  ),
                  title: Text(
                    'Archive Chat',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        '~ person ',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        '*Learn Freelancing...',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  trailing: Text(
                    '17:26',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Divider(color: Color(0xff2A2F32))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 530.0),
            child: Text(
              'Your personal messages are end-to-end encrypted',
              style: TextStyle(
                  color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xff080F13),
    );
  }
}
