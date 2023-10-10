import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  final String ign;
  final String name;
  final String loc;
  final String game;
  final ImageProvider img;

  const ProfileTile({
    super.key,
    required this.ign,
    required this.name,
    required this.loc,
    required this.game,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    String banner = "assets/images/users/def-banner.jpg";
    switch (game) {
      case "Valorant":
        banner = "assets/images/users/valo-banner.jpg";
        break;
      case "Mobile Legends":
        banner = "assets/images/users/ml-banner.jpg";
        break;
      case "CODM":
        banner = "assets/images/users/codm-banner.jpg";
        break;
      default:
    }

    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(60, 0, 0, 0),
            padding: EdgeInsets.all(0),
            width: MediaQuery.of(context).size.width,
            height: 130,
            decoration: BoxDecoration(
              //bluebackground
              image: DecorationImage(
                image: AssetImage(banner),
                fit: BoxFit.cover,
              ),
              color: Colors.black,
              backgroundBlendMode: BlendMode.multiply,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(60, 0, 10, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    ign,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 18,
                      color: Color(0xffffffff),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 8, 0, 12),
                    child: Text(
                      name,
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                        color: Color(0xffd4d4d4),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xffd4d4d4),
                        size: 20,
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                          child: Text(
                            loc,
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xffd4d4d4),
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.gamepad,
                        color: Color(0xffd4d4d4),
                        size: 20,
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                          child: Text(
                            game,
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xffd4d4d4),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          ///***If you have exported images you must have to copy those images in assets/images directory.
          CircleAvatar(
            radius: 50,
            backgroundImage: img,
          ),
        ],
      ),
    );
  }
}
