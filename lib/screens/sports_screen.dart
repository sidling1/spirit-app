import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spirit/widgets/leaderboard_tile.dart';
import 'package:spirit/widgets/match_tile.dart';
import 'package:spirit/widgets/schedule_tile.dart';

class SportsScreen extends StatefulWidget {
  const SportsScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SportsScreen();
}

class _SportsScreen extends State<SportsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF080808),
      appBar: AppBar(
        backgroundColor: Color(0xFF080808),
        title: Text(
          "Sports",
          style: TextStyle(
            fontFamily: "PPMori",
            fontSize: 32.0,
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 16.0,
          ),
          SizedBox(
            height: 50.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 12.0,
                ),
                Image.asset(
                  "assets/sports/basket_ball.png",
                  height: 48.0,
                ),
                SizedBox(
                  width: 12.0,
                ),
                Image.asset(
                  "assets/sports/high_jump.png",
                  height: 48.0,
                ),
                SizedBox(
                  width: 12.0,
                ),
                Image.asset(
                  "assets/sports/badminton.png",
                  height: 48.0,
                ),
                SizedBox(
                  width: 12.0,
                ),
                Image.asset(
                  "assets/sports/cricket.png",
                  height: 48.0,
                ),
                SizedBox(
                  width: 12.0,
                ),
                Image.asset(
                  "assets/sports/football.png",
                  height: 48.0,
                ),
                SizedBox(
                  width: 12.0,
                ),
                Image.asset(
                  "assets/sports/hockey.png",
                  height: 48.0,
                ),
                SizedBox(
                  width: 12.0,
                ),
                Image.asset(
                  "assets/sports/kabaddi.png",
                  height: 48.0,
                ),
                SizedBox(
                  width: 12.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 12.0,
              ),
              Text(
                "BASKETBALL",
                style: TextStyle(
                  fontFamily: "PPMori",
                  color: Color(0xFFCFFF69),
                  fontSize: 16.0,
                ),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Color(0xFFCFFF69),
                  size: 24.0,
                ),
              ),
              Spacer(),
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: Icon(
                  Icons.location_on_outlined,
                  color: Color(0xFFCFFF69),
                  size: 24.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, bottom: 12.0),
            child: Text(
              "Today's Matches",
              style: TextStyle(
                fontFamily: "PPMori",
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
          SizedBox(
            height: 132.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 12.0,
                ),
                MatchTile(),
                SizedBox(
                  width: 8.0,
                ),
                MatchTile(),
                SizedBox(
                  width: 8.0,
                ),
                MatchTile(),
                SizedBox(
                  width: 12.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 32.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 12.0,
              ),
              Text(
                "Schedule",
                style: TextStyle(
                  fontFamily: "PPMori",
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              Spacer(),
              Text(
                "Nov 2",
                style: TextStyle(
                  fontFamily: "PPMori",
                  color: Color(0xFFCFFF69),
                  fontSize: 12.0,
                ),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Color(0xFFCFFF69),
                  size: 16.0,
                ),
              ),
              SizedBox(
                width: 12.0,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Container(
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
                children: [
                  ScheduleTile(),
                  Container(
                    color: Color(0xFFCFFF69),
                    height: 1.0,
                  ),
                  ScheduleTile(),
                  Container(
                    color: Color(0xFFCFFF69),
                    height: 1.0,
                  ),
                  ScheduleTile(),
                  Container(
                    color: Color(0xFFCFFF69),
                    height: 1.0,
                  ),
                  ScheduleTile(),
                  Container(
                    color: Color(0xFFCFFF69),
                    height: 1.0,
                  ),
                  ScheduleTile(),
                  Container(
                    color: Color(0xFFCFFF69),
                    height: 1.0,
                  ),
                  ScheduleTile(),
                  Container(
                    color: Color(0xFFCFFF69),
                    height: 1.0,
                  ),
                  ScheduleTile(),
                  Container(
                    color: Color(0xFFCFFF69),
                    height: 1.0,
                  ),
                  ScheduleTile(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 32.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 12.0,
              ),
              Text(
                "Scoreboard",
                style: TextStyle(
                  fontFamily: "PPMori",
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              Spacer(),
              Text(
                "Mens",
                style: TextStyle(
                  fontFamily: "PPMori",
                  color: Color(0xFFCFFF69),
                  fontSize: 12.0,
                ),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Color(0xFFCFFF69),
                  size: 16.0,
                ),
              ),
              SizedBox(
                width: 12.0,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Container(
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
                children: [
                  LeaderboardTile(
                    isFirst: true,
                    isLast: false,
                  ),
                  Container(
                    color: Color(0xFF080808),
                    height: 1.0,
                  ),
                  LeaderboardTile(
                    isFirst: false,
                    isLast: false,
                  ),
                  Container(
                    color: Color(0xFF080808),
                    height: 1.0,
                  ),
                  LeaderboardTile(
                    isFirst: false,
                    isLast: false,
                  ),
                  Container(
                    color: Color(0xFF080808),
                    height: 1.0,
                  ),
                  LeaderboardTile(
                    isFirst: false,
                    isLast: false,
                  ),
                  Container(
                    color: Color(0xFF080808),
                    height: 1.0,
                  ),
                  LeaderboardTile(
                    isFirst: false,
                    isLast: true,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
        ],
      ),
    );
  }
}
