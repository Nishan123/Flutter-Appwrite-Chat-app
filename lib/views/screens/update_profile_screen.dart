import 'package:appwrite_chat_app/const/colors.dart';
import 'package:appwrite_chat_app/views/custom%20widgets/custom_button.dart';
import 'package:appwrite_chat_app/views/custom%20widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class UpdateProfileScreen extends StatelessWidget {
  UpdateProfileScreen({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Update Profile"),
        ),
        body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.amber,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: primaryColor,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              
              CustomTextfield(
                hintText: "Username",
                controller: nameController,
                obscureText: false,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 8,
              ),
              CustomTextfield(
                hintText: "Phone",
                controller: phoneController,
                obscureText: false,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                backgroundColor: primaryColor,
                onPressed: () {},
                text: "Save Changes",
                textColor: Colors.white,
              )
                        ],
                      ),
            )));
  }
}
