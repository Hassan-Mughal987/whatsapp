import 'package:flutter/material.dart';

class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  final List<Map<String, String>> contacts = [
    {"name": "(You)", "status": "Message yourself"},
    {"name": "No Name", "status": ""},
    {"name": "ABC", "status": ""},
    {"name": "XYZ", "status": "Hey there! I am using WhatsApp."},
    {"name": "DEF", "status": ""},
    {"name": "GHI", "status": "Can't talk, WhatsApp only"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff080F13),
        title: Text(
          "Select contact\n123 contacts",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        actions: [
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
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0xff25D366), // Set the background color to white
              child: Icon(Icons.group_add_rounded, color: Colors.black), // Add the icon inside the CircleAvatar
            ),
            title:Text('New group',
            style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white
            )
            ),
            ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0xff25D366), // Set the background color to white
              child: Icon(Icons.person_add, color: Colors.black), // Add the icon inside the CircleAvatar
            ),
            title: Text('New contact',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                )
            ),
            trailing: Icon(Icons.qr_code, color: Colors.white),
          ),
          ListTile(
            leading: CircleAvatar(
    backgroundColor: Color(0xff25D366), // Set the background color to white
    child: Icon(Icons.groups, color: Colors.black), // Add the icon inside the CircleAvatar
    ),
            title: Text('New community',
    style: TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.white
    )
    ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0xff25D366), // Set the background color to white
              child: Icon(Icons.add_box_rounded, color: Colors.black), // Add the icon inside the CircleAvatar
            ),
            title: Text('Chat with AIs',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                    color: Colors.white
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Contacts on WhatsApp',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ...contacts.map((contact) {
            return ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.png'),
              ),
              title: Text(contact["name"]!, style: TextStyle(color: Colors.white)),
              subtitle: Text(contact["status"]!, style: TextStyle(color: Colors.grey)),
            );
          }).toList(),
        ],
      ),
      backgroundColor: Color(0xff080F13),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ContactsPage(),
    theme: ThemeData.dark(),
  ));
}
