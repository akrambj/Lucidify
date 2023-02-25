import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/firstPage.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            left: 35,
            bottom: 20,
            child: Row(
              children: [
                Image(
                  image: AssetImage('images/Logo.png'),
                ),
                SizedBox(width: 45),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('Login');
                    },
                    child: SvgPicture.asset('images/coolicon.svg',
                        height: 26, width: 51))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
