import 'package:flutter/material.dart';
import 'package:pick/utils/const.dart';
import 'package:pick/view/auth/auth_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [COLOR.ORANGE, COLOR.YELLOW],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("images/ball_left.png"),
                Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset("images/ball_right.png")),
                Image.asset("images/ball_left.png"),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(),
                Image.asset("images/logo.png"),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const AuthPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Get Started",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * .6, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
