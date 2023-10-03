import 'package:flutter/material.dart';

class LeaderboardTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  const LeaderboardTile(
      {super.key, required this.isFirst, required this.isLast});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xFFCFFF69),
        border: Border.all(
          color: Color(0xFFCFFF69),
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            isFirst ? 8 : 0,
          ),
          topRight: Radius.circular(
            isFirst ? 8 : 0,
          ),
          bottomLeft: Radius.circular(
            isLast ? 8 : 0,
          ),
          bottomRight: Radius.circular(
            isLast ? 8 : 0,
          ),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 12.0,
          ),
          Text(
            "1",
            style: TextStyle(
              fontFamily: "PPMori",
              fontWeight: FontWeight.w700,
              fontSize: 16.0,
              color: Color(0xFF080808),
            ),
          ),
          SizedBox(
            width: 24.0,
          ),
          Text(
            "IIT GUWAHATI",
            style: TextStyle(
              fontFamily: "PPMori",
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
              color: Color(0xFF080808),
            ),
          ),
        ],
      ),
    );
  }
}
