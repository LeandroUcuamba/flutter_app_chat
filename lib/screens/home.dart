import 'package:flutter/material.dart';
import 'package:flutter_app_chat/const.dart';
import 'package:flutter_app_chat/models/message.dart';
import 'package:flutter_app_chat/models/user.dart';
import 'package:flutter_app_chat/services/message_service.dart';
import 'package:flutter_app_chat/widgets/suggested_contact.dart';
import 'package:flutter_app_chat/widgets/recent_chat.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final MessageService messageService = MessageService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: accentColor,
        toolbarHeight: 120,
        title: const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text(
            "Chat com \nseus amigos",
            style: TextStyle(
              fontSize: 26,
              fontFamily: 'Metropolis Black',
              fontWeight: FontWeight.bold,
              color: Colors.white,
              wordSpacing: 1.1,
              letterSpacing: 1.1,
            ),
          ),
        ),
      ),
      body: Container(
        color: accentColor,
        child: Column(
          children: [
            buildSuggestedContactsWidget(),
            Expanded(
              child: buildRecentChatsWidget(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSuggestedContactsWidget() {
    List<User> users = messageService.getUsers();

    return SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black12,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: users.length,
                itemBuilder: (BuildContext context, int index) {
                  final User user = users[index];
                  return SuggestedContact(user: user);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRecentChatsWidget() {
    List<Message> chats = messageService.getChats();

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(36.0),
          topRight: Radius.circular(36.0),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(36.0),
          topRight: Radius.circular(36.0),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
          child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              final Message message = chats[index];
              return RecentChat(message: message);
            },
          ),
        ),
      ),
    );
  }
}
