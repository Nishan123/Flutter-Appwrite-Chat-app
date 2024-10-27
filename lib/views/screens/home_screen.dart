import 'package:appwrite_chat_app/const/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: primaryColor,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: secondaryColor,
        ),
      ),
      appBar: AppBar(
        title: const Text(
          "Chats",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person_rounded,
                size: 30,
              ))
        ],
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.pushNamed(context, "/chat");
          },
          leading: Stack(
            children: [
              const CircleAvatar(
                backgroundImage:
                    NetworkImage("https://i.sstatic.net/l60Hf.png"),
                backgroundColor: Colors.black45,
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: CircleAvatar(
                  radius: 6,
                  backgroundColor: primaryColor,
                ),
              ),
            ],
          ),
          title: Text("Username"),
          subtitle: Text("Last message from the user"),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "5+",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: primaryColor,
                ),
              ),
              const Text("12:00")
            ],
          ),
        );
      }),
    );
  }
}
