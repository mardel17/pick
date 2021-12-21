import 'package:flutter/material.dart';
import 'package:pick/utils/const.dart';
import 'package:pick/widget/submit_button.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "images/header.png",
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          const SizedBox(height: 16),
          Container(            
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: COLOR.GRAY,
            ),
            child: Row(
              children: [
                Flexible(
                  child: SubmitButton(
                    title: "Login",
                    isActive: isLogin,
                    callback: () {
                      setState(() {
                        isLogin = true;
                      });
                    },
                  ),
                ),
                Flexible(
                  child: SubmitButton(
                    title: "Register",
                    isActive: !isLogin,
                    callback: () {
                      setState(() {
                        isLogin = false;
                      });
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
