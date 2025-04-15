import 'package:flutter/material.dart';
import 'package:whatsapp/chatpage2.dart';
import 'package:whatsapp/contacts.dart';
import 'call.dart';
import 'communities.dart';
import 'update.dart';
import 'archived.dart';
import 'chatpage1.dart';

class WhatsAppInterface extends StatefulWidget {
  @override
  _WhatsAppInterfaceState createState() => _WhatsAppInterfaceState();
}

class _WhatsAppInterfaceState extends State<WhatsAppInterface> {
  int _selectedIndex = 0; // Track the selected tab index
  PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index); // Jump to the selected page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: ClampingScrollPhysics(), // Disable overscroll effect
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index; // Update selected index
          });
        },
        children: [
          ChatsPage(), // Chats page
          UpdatesPage(), // Updates page
          CommunitiesPage(), // Communities page
          CallsPage(), // Calls page
        ],
      ),
      bottomNavigationBar: _selectedIndex <= 3
          ? BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff080F13),
        selectedItemColor: Color(0xff25D366),
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex, // Highlight current selection
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: "Updates"),
          BottomNavigationBarItem(icon: Icon(Icons.groups_outlined), label: "Communities"),
          BottomNavigationBarItem(icon: Icon(Icons.call_outlined), label: "Calls"),
        ],
        onTap: _onItemTapped,
      )
          : null,
    );
  }
}

class ChatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff080F13),
        title: Text(
          "WhatsApp",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
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
      body: Container(
        color: Color(0xff080F13),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 45,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff2A2F32),
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.only(top: 5),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ArchivedPage()),
                );
              },
              child: Container(
                color: Color(0xff080F13),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  children: [
                    Icon(Icons.archive_outlined, color: Colors.white),
                    SizedBox(width: 16),
                    Text(
                      "Archived",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: InkWell(
                      onTap: () {
                        // Define what happens when the row is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChatScreen1()),
                        );
                      },
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('assets/profile.png'),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'ABC',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 24.0),
                                      child: Text(
                                        '22:00',
                                        style: TextStyle(color: Colors.grey.shade500),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'No Chat',
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
            SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: InkWell(
                      onTap: () {
                        // Define what happens when the row is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChatScreen2()),
                        );
                      },
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('assets/profile.png'),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'DEF',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 24.0),
                                      child: Text(
                                        '22:10',
                                        style: TextStyle(color: Colors.grey.shade500),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'No Chat',
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/profile.png'),
                        ),
                        SizedBox(width: 12,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('GHI',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),),
                                SizedBox(width: 199,),
                                Text('11:45',style: TextStyle(color: Colors.grey.shade500),),
                              ],
                            ),
                            Text('No Chat',style: TextStyle(color: Colors.grey.shade500)),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/profile.png'),
                        ),
                        SizedBox(width: 12,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('JKL',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),),
                                SizedBox(width: 200,),
                                Text('15:23',style: TextStyle(color: Colors.grey.shade500),),
                              ],
                            ),
                            Text('No Chat',style: TextStyle(color: Colors.grey.shade500)),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/profile.png'),
                        ),
                        SizedBox(width: 12,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('MNO',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),),
                                SizedBox(width: 190,),
                                Text('22:24',style: TextStyle(color: Colors.grey.shade500),),
                              ],
                            ),
                            Text('No Chat',style: TextStyle(color: Colors.grey.shade500)),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/profile.png'),
                        ),
                        SizedBox(width: 12,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('PQR',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),),
                                SizedBox(width: 195,),
                                Text('22:24',style: TextStyle(color: Colors.grey.shade500),),
                              ],
                            ),
                            Text('No Chat',style: TextStyle(color: Colors.grey.shade500)),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/profile.png'),
                        ),
                        SizedBox(width: 12,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('STU',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),),
                                SizedBox(width: 200,),
                                Text('22:24',style: TextStyle(color: Colors.grey.shade500),),
                              ],
                            ),
                            Text('No Chat',style: TextStyle(color: Colors.grey.shade500)),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff25D366),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ContactsPage()),
          );
        },
        child: Icon(Icons.message_rounded, color: Colors.black),
      ),
    );
  }

  Widget buildChatTile({
    required String name,
    required String message,
    required String time,
    required String imageUrl,
  }) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imageUrl),
      ),
      title: Text(
        name,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        message,
        style: TextStyle(color: Colors.grey),
      ),
      trailing: time.isNotEmpty
          ? Text(
        time,
        style: TextStyle(color: Colors.grey),
      )
          : null,
      tileColor: Colors.black,
      onTap: () {
      },
    );
  }
}