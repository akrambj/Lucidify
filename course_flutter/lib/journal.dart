import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Journal extends StatefulWidget {
  const Journal({super.key});

  @override
  State<Journal> createState() => _JournalState();
}

class _JournalState extends State<Journal> {
  @override
  Widget build(BuildContext context) {
    int F = 1;
    int D = 8;
    int S = 2;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 1, 19, 34),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 0, 23, 44),
                Color.fromARGB(112, 86, 1, 143),
                Color.fromARGB(205, 253, 164, 238),
              ],
            ),
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: TextButton(
                    onPressed: () {},
                    child: SvgPicture.asset(
                      'images/Vector.svg',
                      height: 15,
                      width: 1,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 10),
                child: Row(
                  children: [
                    Image.asset('images/Logo.png', height: 110),
                    Text(
                      ' Journal',
                      style: TextStyle(
                        fontSize: 38,
                        letterSpacing: 4,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 50),
                    child: Icon(
                      Icons.dashboard,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 10, top: 50),
                      child: Text(
                        "Dashboard",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ))
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromARGB(255, 108, 158, 179),
                            Color(0xFFFFFFFF),
                          ],
                        ),
                      ),
                      child: Column(children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          F.toString(),
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("FRIENDS"),
                      ]),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromARGB(255, 108, 158, 179),
                            Color(0xFFFFFFFF),
                          ],
                        ),
                      ),
                      child: Column(children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          D.toString(),
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("DREAMS"),
                      ]),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromARGB(255, 108, 158, 179),
                            Color(0xFFFFFFFF),
                          ],
                        ),
                      ),
                      child: Column(children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          S.toString(),
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("STARS"),
                      ]),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    child: Icon(
                      Icons.timelapse_sharp,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "Recent Dreams",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset("images/Group29.png"),
            ],
          ),
        ),
      ),
    );
  }
}
