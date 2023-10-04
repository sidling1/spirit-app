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
      body:
      Center(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 128.0,
            ),
            Text(
              "Sign in",
              style: TextStyle(
                fontFamily: "PPMori",
                color: Color(0xFFFFFFFF),
                fontSize: 32.0,
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Container(
                width:280.0,
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
                        height: 16.0,
                      ),
                      Container(
                        height: 40.0,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.green,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                          onChanged: (value) {
                            setState(() {
                              username = value;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: 26.0,
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
                        height: 16.0,
                      ),
                      Container(
                        height: 40.0,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFCFFF69),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                isPasswordVisible ? Icons.visibility : Icons.visibility_off,
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
                        ),
                      ),
                    ]
                )
            ),

            SizedBox(
              height: 128.0,
            ),
            ElevatedButton(
              onPressed: () {
                // Perform login logic here, and handle success/failure
                // You can also navigate to a different screen upon successful login.
              },
              style:ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFCFFF69)),
                foregroundColor: MaterialStateProperty.all<Color>(Color(0xFF080808)),
                fixedSize: MaterialStateProperty.all<Size>(Size(280.0,40.0)),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('Sign in with Google'),
                  SizedBox(
                    width: 64.0,
                  ),
                  Image.asset(
                    "assets/googlelogo.png",
                  )
                ],
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Perform login logic here, and handle success/failure
                // You can also navigate to a different screen upon successful login.
              },
              style:ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFCFFF69)),
                foregroundColor: MaterialStateProperty.all<Color>(Color(0xFF080808)),
                fixedSize: MaterialStateProperty.all<Size>(Size(280.0,40.0)),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Text('Sign in as Guest')
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
