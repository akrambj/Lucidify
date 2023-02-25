import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(205, 253, 164, 238),
              Color.fromARGB(112, 86, 1, 143),
              Color.fromARGB(205, 253, 164, 238),
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 20,
              child: TextButton(
                onPressed: () {},
                child: Image.asset(
                  'images/Group31.png',
                  height: 26,
                  width: 51,
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: TextButton(
                onPressed: () {},
                child: Image.asset(
                  'images/group32.png',
                  height: 26,
                  width: 51,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: TextButton(
                onPressed: () {},
                child: Image.asset(
                  'images/Group33.png',
                  height: 26,
                  width: 51,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: TextButton(
                onPressed: () {},
                child: Image.asset(
                  'images/Group31.png',
                  height: 26,
                  width: 51,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
