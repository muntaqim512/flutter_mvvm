import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/Utiles/Utils.dart';
import 'package:getx_mvvm/view_models/Login_view_model.dart';

import '../../res/Componenets/MyText.dart';
import '../../res/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginViewModel loginVM = Get.put(LoginViewModel());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MyText(
          text: "Login",
          color: AppColor.whiteColor,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Center(
                child: MyText(
                  fontWeight: FontWeight.bold,
                  text: "LOGIN",
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: "Email",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: loginVM.emailController.value,
                      focusNode: loginVM.emailFocusNode.value,
                      validator: (value) {
                        if (value!.isEmpty) {
                          Utils.toastmessage("Enter Email");
                        }
                      },
                      onFieldSubmitted: (value) {
                        Utils.FieldFocus(context, loginVM.emailFocusNode.value,
                            loginVM.passwordFocusNod.value);
                      },
                      decoration: InputDecoration(
                        hintText: "Enter Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MyText(
                      text: "Password",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: loginVM.passwordController.value,
                      focusNode: loginVM.passwordFocusNod.value,
                      validator: (value) {
                        if (value!.isEmpty) {
                          Utils.toastmessage("Enter Password");
                        }
                      },
                      onFieldSubmitted: (value) {
                        Utils.FieldFocus(
                            context,
                            loginVM.passwordFocusNod.value,
                            loginVM.emailFocusNode.value);
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Utils.toastmessage("Your Requirement Fill");
                  }
                },
                child: Center(
                  child: MyText(
                    text: "Submit",
                    fontWeight: FontWeight.bold,
                    color: AppColor.whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
