import 'package:appwrite_chat_app/views/custom%20widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: SafeArea(
          child: Column(
        children: [
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, "/updateProfile");
            },
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
            ),
            title: Text("Username"),
            subtitle: Text("+977 9819320395"),
            trailing: Icon(Icons.edit),
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            title: Text("About"),
            leading: Icon(Icons.info),
          ),
          Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButton(
                iconColor: Colors.white,
                icon: Icon(Icons.logout),
                backgroundColor: Colors.red,
                onPressed: () {},
                text: "Log Out",
                textColor: Colors.white),
          ),
        ],
      )),
    );
  }
}
