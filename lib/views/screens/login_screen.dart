import 'package:appwrite_chat_app/const/colors.dart';
import 'package:appwrite_chat_app/views/custom%20widgets/custom_button.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final _formKey1 = GlobalKey<FormState>();

  final TextEditingController _phoneController = TextEditingController();

  final TextEditingController _otpController = TextEditingController();

  String countryCode = "+977";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Login",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Verify your phone number to continue",
                style: TextStyle(color: Colors.black26),
              ),
              const SizedBox(height: 10),
              Form(
                  key: _formKey,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.length != 10) {
                        return "Invalid phone number";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.phone,
                    controller: _phoneController,
                    decoration: InputDecoration(
                      prefixIcon: CountryCodePicker(
                        showFlag: false,
                        showFlagDialog: true,
                        onChanged: (value) {
                          countryCode = value.dialCode!;
                        },
                      ),
                      hintText: "Phone number",
                      hintStyle: const TextStyle(color: Colors.black45),
                      filled: true,
                      fillColor: Colors.black12,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.blue.withOpacity(0.2),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                backgroundColor: primaryColor,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text("OTP Verification"),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(
                                        Icons.cancel_outlined,
                                        color: Colors.red,
                                      ))
                                ],
                              ),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Enter OTP from your message"),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Form(
                                    key: _formKey1,
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value!.length != 6) {
                                          return "Invalid OTP!";
                                        } else {
                                          return null;
                                        }
                                      },
                                      keyboardType: TextInputType.phone,
                                      controller: _otpController,
                                      decoration: InputDecoration(
                                        hintText: "Enter your OTP",
                                        hintStyle: const TextStyle(
                                            color: Colors.black45),
                                        filled: true,
                                        fillColor: Colors.black12,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            width: 1,
                                            color: Colors.blue.withOpacity(0.2),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomButton(
                                    backgroundColor: primaryColor,
                                    onPressed: () {
                                      if (_formKey1.currentState!.validate()) {}
                                    },
                                    text: "Verify OTP",
                                    textColor: Colors.white,
                                  )
                                ],
                              ),
                            ));
                  }
                },
                text: "Send OTP",
                textColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
