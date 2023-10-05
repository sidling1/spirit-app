import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignInScreen> {
  String username = '';
  String password = '';
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF080808),
      body: Center(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 100.0,
            ),
            Center(
              child: Text(
                "Sign in",
                style: TextStyle(
                  fontFamily: "PPMori",
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w700,
                  fontSize: 32.0,
                ),
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Text(
                          "Name",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: "PPMori",
                            color: Color(0xFFFFFFFF),
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    SizedBox(
                      height: 40.0,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 12.0),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFCFFF69),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFCFFF69),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFCFFF69),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        onChanged: (value) {
                          setState(() {
                            username = value;
                          });
                        },
                        style: TextStyle(
                          fontFamily: "PPMori",
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "Password",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: "PPMori",
                            color: Color(0xFFFFFFFF),
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    SizedBox(
                      height: 40.0,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 12.0),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFCFFF69),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFCFFF69),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFCFFF69),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              size: 18.0,
                              color: Color(0xFFCFFF69),
                            ),
                            onPressed: () {
                              setState(() {
                                isPasswordVisible = !isPasswordVisible;
                              });
                            },
                          ),
                        ),
                        obscureText: !isPasswordVisible,
                        onChanged: (value) {
                          setState(() {
                            password = value;
                          });
                        },
                        style: TextStyle(
                          fontFamily: "PPMori",
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            SizedBox(
              height: 40.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Perform login logic here, and handle success/failure
                    // You can also navigate to a different screen upon successful login.
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFFCFFF69)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF080808)),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Sign in with Google',
                        style: TextStyle(
                          fontFamily: "PPMori",
                          fontSize: 16.0,
                        ),
                      ),
                      Spacer(),
                      Image.asset(
                        "assets/googlelogo.png",
                        width: 28.0,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 24.0),
            SizedBox(
              height: 40.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Perform login logic here, and handle success/failure
                    // You can also navigate to a different screen upon successful login.
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFFCFFF69)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF080808)),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Sign in as Guest',
                        style: TextStyle(
                          fontFamily: "PPMori",
                          fontSize: 16.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
