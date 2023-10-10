import 'package:flutter/material.dart';
import 'package:gamersportal/components/profile_tile.dart';
import 'package:gamersportal/screens/ProfileScreen.dart';

class GamersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    gotoProfile(int id) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ProfileScreen(
                  id: id,
                )), // Replace 'AnotherScreen()' with the widget for your target screen
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0x00ffffff),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gamers Nearby",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                fontSize: 16,
                color: Color(0xff000000),
              ),
            ),
            Icon(
              Icons.radar_outlined,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(16),
        shrinkWrap: false,
        physics: const ScrollPhysics(),
        children: [
          GestureDetector(
            onTap: () {
              gotoProfile(0);
            },
            child: ProfileTile(
              ign: "Z1ON",
              name: "Carlo Vicente Villanobos",
              loc: "Dipolog City",
              game: "Valorant",
              img: AssetImage("assets/images/users/carlo-dp.jpg"),
            ),
          ),
          GestureDetector(
            onTap: () {
              gotoProfile(1);
            },
            child: ProfileTile(
              ign: "GDYT//Sleepツ",
              name: "Peter Justin Omandam Peñas",
              loc: "Dipolog City",
              game: "CODM",
              img: AssetImage("assets/images/users/peter-dp.jpg"),
            ),
          ),
          GestureDetector(
            onTap: () {
              gotoProfile(2);
            },
            child: ProfileTile(
              ign: "LanieSpy",
              name: "Melanie Elopre Jakosalem",
              loc: "Polanco",
              game: "Mobile Legends",
              img: AssetImage("assets/images/users/lanie-dp.jpg"),
            ),
          ),
          GestureDetector(
            onTap: () {
              gotoProfile(3);
            },
            child: ProfileTile(
              ign: "Vee.ops",
              name: "Dodi Vee Colata",
              loc: "Polanco",
              game: "CODM",
              img: AssetImage("assets/images/users/dodi-dp.jpg"),
            ),
          ),
        ],
      ),
    );
  }
}
