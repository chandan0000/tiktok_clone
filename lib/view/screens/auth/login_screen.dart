import 'package:flutter/material.dart';
import 'package:tiktok_clone/view/widgets/glitch.dart';
import 'package:tiktok_clone/view/widgets/text_input.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GlithEffect(
              child: const Text(
                "TikTok Clone",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _emailController,
                myIcon: Icons.email,
                myLabelText: 'email',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _passwordController,
                myIcon: Icons.lock,
                myLabelText: 'password',
                toHide: true,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      width: MediaQuery.of(context).size.width - 50,
                      child: Text("Login"))),
            )
          ],
        ),
      ),
    );
  }
}
