import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For formatting time

void main() {
  runApp(ChatPage());
}

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatScreen2(),
    );
  }
}

class ChatScreen2 extends StatefulWidget {
  @override
  _ChatScreen2State createState() => _ChatScreen2State();
}

class _ChatScreen2State extends State<ChatScreen2> {
  final TextEditingController _messageController = TextEditingController();

  // Store messages with timestamps
  final List<Map<String, dynamic>> _messages = [];
  bool _isTyping = false; // Track typing state

  void _sendMessage() {
    if (_messageController.text.trim().isNotEmpty) {
      setState(() {
        _messages.add({
          'text': _messageController.text.trim(),
          'time': DateFormat.jm().format(DateTime.now()), // Get current time
        });
        _messageController.clear();
        _isTyping = false; // Reset typing state
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff080F13),
        title: Text('DEF'),
        actions: [
          IconButton(
            icon: Icon(Icons.videocam_outlined, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.call_outlined, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/chatbg.png'), // Background image
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                reverse: true,
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  int realIndex = _messages.length - 1 - index;
                  bool isRightAligned = realIndex % 2 == 0;

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    child: Align(
                      alignment: isRightAligned ? Alignment.centerRight : Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: isRightAligned ? Color(0xff005D4B) : Colors.grey.shade700,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              _messages[realIndex]['text'],
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(height: 5), // Space between message and time
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  _messages[realIndex]['time'],
                                  style: TextStyle(color: Colors.white70, fontSize: 12),
                                ),
                                SizedBox(width: 5),
                                Icon(Icons.check, color: Colors.white70, size: 16), // Single tick
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff2A2F32),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.emoji_emotions_outlined, color: Colors.grey),
                            onPressed: () {},
                          ),
                          Expanded(
                            child: TextField(
                              controller: _messageController,
                              onChanged: (value) {
                                setState(() {
                                  _isTyping = value.trim().isNotEmpty;
                                });
                              },
                              decoration: InputDecoration(
                                hintText: 'Message',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.attach_file, color: Colors.grey),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.camera_alt_outlined, color: Colors.grey),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  GestureDetector(
                    onTap: _sendMessage,
                    child: CircleAvatar(
                      backgroundColor: Color(0xff25D366),
                      radius: 25,
                      child: Icon(
                        _isTyping ? Icons.send : Icons.mic, // Conditional icon
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
