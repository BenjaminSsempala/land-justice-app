import 'package:flutter/material.dart';
import 'package:landjustice/screens/home.dart';
import 'package:landjustice/screens/landingPage.dart';
import 'package:landjustice/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
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
        title: const Text(
          "Sign In",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 17, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const FlutterLogo(size: 100),
            const SizedBox(height: 16.0),
            Text(
              "Land Justice",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white.withOpacity(0.8),
                    fontWeight: FontWeight.w400,
                  ),
            ),
            const SizedBox(height: 16.0),
           
            const SizedBox(height: 41.0),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Email",
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
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Password",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 50.0),
            ElevatedButton(
              style: ButtonStyle(),
              onPressed: () {
                // TODO: Implement SIGNIN logic
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyHomePage(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: const Center(
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 18, 0, 17),
                      child: Text('SIGN IN')),
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
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
                child: const Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
