import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 19, 34),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 0, 23, 44),
                Color.fromARGB(112, 86, 1, 143),
                Color.fromARGB(205, 253, 164, 238)
              ],
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                alignment: Alignment.bottomLeft,
                child: Image.asset(
                  "images/Logo.png",
                  width: 80,
                  height: 100,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_left,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(
                    "images/couverture.png",
                    width: 352,
                    height: 173,
                  ),
                  Container(
                    width: 105,
                    height: 105,
                    child: CircleAvatar(
                      child: Image.asset(
                        "images/avatar.png",
                        width: 105,
                        height: 105,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 52, left: 50, bottom: 10),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Username',
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
              ),
              Container(
                width: 300,
                color: Colors.white,
                child: Text(
                  "CSE Dreamer",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 50, bottom: 10),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Email',
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
              ),
              Container(
                width: 300,
                color: Colors.white,
                child: Text(
                  "cse2097@esi.dz",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 50, bottom: 10),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Gender',
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
              ),
              Container(
                width: 300,
                color: Colors.white,
                child: Text(
                  "Male",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 50, bottom: 10),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Serial Number',
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
              ),
              Container(
                width: 300,
                color: Colors.white,
                child: Text(
                  "79-DU-36-Q7-S9",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 194,
                height: 46,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "LOGOUT",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 2),
                    ),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(39))))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
