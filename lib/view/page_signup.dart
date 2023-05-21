import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'components/textfield_component.dart';
import 'page_login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Sign Up",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFields(
              hintText: "Username",
              controller: _usernameController,
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFields(
              hintText: "Password",
              controller: _passwordController,
              obscureText: true,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_usernameController.text != null &&
                      _passwordController != null) {
                    _register(false);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const LoginPage();
                    }));
                  } else {
                    showDialog(
                        context: context,
                        builder: (context) => const CupertinoAlertDialog(
                              title: Text("Error"),
                              content: Text(
                                  "Username and password cannot be empty."),
                            ));
                  }
                },
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  _register(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool status = value;
    prefs.setBool('status', status);
    prefs.setString('username', _usernameController.text);
    prefs.setString('password', _passwordController.text);
    prefs.commit();

    print(prefs.getString('username'));
    print(prefs.getString('password'));
    print(prefs.getBool('status'));
  }
}
