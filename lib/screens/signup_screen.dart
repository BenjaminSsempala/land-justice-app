import 'package:flutter/material.dart';
import 'package:landjustice/screens/home.dart';
import 'package:landjustice/screens/landingPage.dart';
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
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LandingPage(),
              ),
            );
          },
        ),
        title: Text(
          "Sign Up",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 11.0),
            const Align(
              heightFactor: 0.5,
              alignment: Alignment.topLeft,
              child: Center(
                  child: Text(
                "Create New Account",
              )
              ),
            ),
            const SizedBox(height: 48.0),
            TextFormField(
              controller: _nameController,
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
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
                filled: true,
                fillColor: Colors.white,
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
                filled: true,
                fillColor: Colors.white,
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
                filled: true,
                fillColor: Colors.white,
                hintText: "Password",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 50),
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
                child: Center(
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 18, 0, 17),
                      child: Text('SIGN UP')),
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
                child: const Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                  'Already Have an Account? Sign In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
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
