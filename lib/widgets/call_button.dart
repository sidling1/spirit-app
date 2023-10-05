import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget callButton({required String number, required String name}) {
  return Padding(
    padding: const EdgeInsets.all(6.0),
    child: InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      onTap: () async {
        final Uri numberUri = Uri(
          scheme: 'tel',
          path: number,
        );
        try {
          await launchUrl(numberUri);
        } catch (e) {
          debugPrint(e.toString());
        }
      },
      child: Ink(
        child: Row(
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: null,
              icon: const Icon(
                Icons.phone_in_talk_sharp,
                color: Color(0xFFCFFF69),
                size: 24.0,
              ),
            ),
            Text(
              name,
              style: const TextStyle(
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
