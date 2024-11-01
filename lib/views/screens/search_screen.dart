import 'package:appwrite_chat_app/views/custom%20widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add User"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: Column(
          children: [
            CustomTextfield(
                prefixIcon: Icon(Icons.search),
                hintText: "Enter phone number",
                controller: phoneController,
                obscureText: false,
                textInputType: TextInputType.phone)
          ],
        ),
      ),
    );
  }
}
