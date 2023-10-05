import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget emailButton() {
  const email = "spirit@iitg.ac.in";
  return Padding(
    padding: const EdgeInsets.all(6.0),
    child: InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      onTap: () async {
        String? encodeQueryParameters(Map<String, String> params) {
          return params.entries
              .map((MapEntry<String, String> e) =>
                  '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
              .join('&');
        }
        final Uri emailUri = Uri(
          scheme: 'mailto',
          path: email,
          query: encodeQueryParameters(<String, String>{}),
        );
  
        try {
          await launchUrl(emailUri);
        } catch (e) {
          debugPrint(e.toString());
        }
      },
      child: Ink(
        child: Row(
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: const Icon(
                Icons.email_outlined,
                color: Color(0xFFCFFF69),
                size: 24.0,
              ),
            ),
            const Text(
              email,
              style: TextStyle(
                fontFamily: "PPMori",
                color: Color(0xFFCFFF69),
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
