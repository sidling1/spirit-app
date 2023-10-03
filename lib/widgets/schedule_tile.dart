import 'package:flutter/material.dart';

class ScheduleTile extends StatelessWidget {
  const ScheduleTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          SizedBox(
            width: 12.0,
          ),
          Text(
            "ADBU vs IITG (M)",
            style: TextStyle(
              fontFamily: "PPMori",
              fontSize: 12.0,
            ),
          ),
          Spacer(),
          Text(
            "5:30 PM",
            style: TextStyle(
                fontFamily: "PPMori",
                fontSize: 12.0,
                fontWeight: FontWeight.w700),
          ),
          Spacer(),
          Text(
            "Court 1",
            style: TextStyle(
              fontFamily: "PPMori",
              fontSize: 12.0,
            ),
          ),
          SizedBox(
            width: 12.0,
          ),
        ],
      ),
    );
  }
}
