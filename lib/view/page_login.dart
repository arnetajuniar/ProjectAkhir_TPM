// import 'package:flutter/material.dart';

// import 'textfield_component.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final _usernameController = TextEditingController();
//   final _passwordController = TextEditingController();

//   String valueUsername = "";
//   String valuePassword = "";
//   String username = "";
//   String password = "";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               "Login",
//               style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             TextFields(
//               hintText: "Username",
//               controller: _usernameController,
//               obscureText: false,
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             TextFields(
//               hintText: "Password",
//               controller: _passwordController,
//               obscureText: true,
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Expanded(
//                   flex: 4,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       if (_usernameController.text != "" &&
//                           _passwordController.text != "") {
//                         getCredential();
//                       } else {
//                         showDialog(
//                             context: context,
//                             builder: (BuildContext context) {
//                               return const AlertDialog(
//                                 title: Text("Login Failed"),
//                                 content: Text(
//                                     "Username or password cannot be empty"),
//                                 actions: [
//                                   TextButton(
//                                       onPressed: () {
//                                         Navigator.of(context).pop();
//                                       },
//                                       child: Text("Close"))
//                                 ],
//                               );
//                             });
//                       }
//                     },
//                     child: null,
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   getCredential() async {
//     shared
//   }
// }
