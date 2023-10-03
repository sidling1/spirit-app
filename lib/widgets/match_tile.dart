import 'package:flutter/material.dart';

class MatchTile extends StatelessWidget {
  const MatchTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 130.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFCFFF69),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 64,
          ),
          SizedBox(
            height: 64,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ADBU vs IITG (M)",
                    style: TextStyle(
                      fontFamily: "PPMori",
                      fontWeight: FontWeight.w700,
                      fontSize: 12.0,
                    ),
                  ),
                  Text(
                    "12-40",
                    style: TextStyle(
                      fontFamily: "PPMori",
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Court 1",
                        style: TextStyle(
                          fontFamily: "PPMori",
                          fontSize: 8.0,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Ongoing",
                        style: TextStyle(
                          fontFamily: "PPMori",
                          fontSize: 8.0,
                          color: Color(0xFFCFFF69),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
