import 'package:flutter/material.dart';
import 'package:towntalk/chatscreen.dart';


class Chat {
  final String name;
  final String message;
  final String time;
   
  Chat({required this.name, required this.message, required this.time, });
}

final List<Chat> chats = [
  Chat(name: "Alice", message: "Hey, how are you?", time: "10:30 AM",  ),
  Chat(name: "Bob", message: "Let's catch up later.", time: "9:15 AM",  ),
  Chat(name: "Charlie", message: "Are you coming to the party?", time: "8:00 AM"),
  // Add more chat items here
];

class ChatItem extends StatelessWidget {
  final Chat chat;
  final VoidCallback onTap;

  ChatItem({required this.chat, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final lastMessage = chats.last.message;

    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.person),
      ),
      title: Text(chat.name),
      subtitle: Text(
        lastMessage,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(chat.time),
      onTap: onTap,
    );
  }
}
class ChatListScreen extends StatefulWidget {
  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
   TextEditingController _searchController = TextEditingController();
  List<Chat> _filteredChats = List.from(chats);


  @override
  void initState() {
    super.initState();
    _searchController.addListener(_filterChats);
  }

  @override
  void dispose() {
    _searchController.removeListener(_filterChats);
    _searchController.dispose();
    super.dispose();
  }

  void _filterChats() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredChats = chats.where((chat) {
        return chat.name.toLowerCase().contains(query) ||
               chat.message.toLowerCase().contains(query);
      }).toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messages"),
      ),
      body: Column(
        children: [
 Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredChats.length,
              itemBuilder: (context, index) {
                return ChatItem(chat: _filteredChats[index],
                 onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatScreen(
                          userName: _filteredChats[index].name,
                        ),
                      ),
                    );
                  },);
              },
            ),
          ),
        ],
      ),
    );
  }
}