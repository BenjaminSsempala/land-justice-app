import 'package:flutter/material.dart';
import 'package:landjustice/screens/home.dart';
import 'package:landjustice/screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.fromLTRB(14, 20, 17, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 11.0),
            const Align(
              heightFactor: 0.5,
              alignment: Alignment.topLeft,
              child: Text(
                "Create New Account",
              ),
            ),
            const SizedBox(height: 24.0),
            TextFormField(
              controller: _nameController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Full Name",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 19.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Phone Number",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 19.0),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: "Email Address",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 19.0),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              style: ButtonStyle(),
              onPressed: () {
                // TODO: Implement signup logic
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyHomePage(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(91, 18, 91, 17),
                  child: Text('SIGN UP'),
                ),
              ),
            ),
            const SizedBox(height: 11.0),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Already Have an Account? Sign In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
