import 'package:flutter/material.dart';
import 'package:reservations_project/Auth/Pages_Auth/regester.dart';
import 'package:reservations_project/widgets/Text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Sign Up',
                    fontSize: 30.0,
                    color: Colors.white,
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 40),
                  CustomText(
                    text: 'Enter Phone Number :',
                    color: Colors.white60,
                  ),
                  SizedBox(height: 10),
                  TextField(
                    onTap: () {
                      double increasedHeight =
                          MediaQuery.of(context).size.height * 0.3;
                      Scaffold.of(context).showBottomSheet(
                        (context) => Container(
                          height: increasedHeight,
                          color: Colors.transparent,
                        ),
                      );
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15.0),
                      hintText: '00352 681 546 913',
                      hintStyle: TextStyle(color: Colors.black26),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      suffixIcon: Icon(
                        Icons.phone,
                        color: Color(0xFF8857F1),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  CustomText(
                    text: 'Code :',
                    color: Colors.white60,
                  ),
                  SizedBox(height: 10),
                  TextField(
                    obscureText: !_showPassword,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15.0),
                      hintText: '_ _ _ _ _ ',
                      hintStyle: TextStyle(color: Colors.black26),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                        icon: Icon(
                          _showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Color(0xFF8857F1),
                        ),
                      ),
                    ),
                  ),
                  CustomText(
                    text: 'Forgot your password?',
                    color: Colors.white60,
                    fontSize: 14,
                  ),
                  SizedBox(height: 60),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF8857F1),
                    ),
                    child: CustomText(
                      text: 'SIGN IN',
                      alignment: Alignment.center,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 80),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: 'Don‘t have an account? ',
                        color: Colors.white70,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterPage(),
                            ),
                          );
                        },
                        child: CustomText(
                          text: ' Sign in',
                          color: Color(0xFF8857F1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.facebook),
                        color: Colors.blue[800],
                        onPressed: () {},
                        iconSize: 40,
                      ),
                      IconButton(
                        icon: Icon(Icons.g_translate),
                        color: Color(0xFF8857F1),
                        onPressed: () {},
                        iconSize: 40,
                      ),
                      IconButton(
                        icon: Icon(Icons.close),
                        color: Colors.black,
                        onPressed: () {},
                        iconSize: 40,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
