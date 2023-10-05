import 'package:flutter/material.dart';
import 'package:spirit/widgets/call_button.dart';
import 'package:spirit/widgets/email_button.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpDesk extends StatelessWidget {
  const HelpDesk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String hospitalNumber = '+917654323456';
    return Scaffold(
      backgroundColor: const Color(0xFF080808),
      appBar: AppBar(
        backgroundColor: const Color(0xFF080808),
        title: const Text(
          "Helpdesk",
          style: TextStyle(
            fontFamily: "PPMori",
            fontSize: 32.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
              child: Text(
                "Dial Spirit",
                style: TextStyle(
                  fontFamily: "PPMori",
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            callButton(name: '+911234567890', number: '+911234567890'),
            callButton(name: '+911234567890', number: '+911234567890'),
            callButton(name: '+911234567890', number: '+911234567890'),
            SizedBox(
              height: 32.0,
            ),
            const SizedBox(
              height: 20,
              child: Text(
                "Email Spirit",
                style: TextStyle(
                  fontFamily: "PPMori",
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            emailButton(),
            SizedBox(
              height: 32.0,
            ),
            const SizedBox(
              height: 20,
              child: Text(
                "Important Contacts",
                style: TextStyle(
                  fontFamily: "PPMori",
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            callButton(name: 'IITG Hospital', number: hospitalNumber),
            callButton(name: 'IITG Hospital', number: hospitalNumber),
          ],
        ),
      ),
    );
  }
}
