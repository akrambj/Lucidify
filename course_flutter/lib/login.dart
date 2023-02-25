import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  final _textcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  bool hide = true;
  Icon icon = Icon(
    Icons.visibility_off,
    color: Colors.white,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 19, 34),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 0, 23, 44),
                  Color.fromARGB(112, 86, 1, 143),
                  Color.fromARGB(205, 253, 164, 238)
                ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  //margin: EdgeInsets.only(top: 87, left: 123, right: 123),
                  child:
                      Image.asset('images/Logo.png', height: 144, width: 106)),
              Container(
                margin: EdgeInsets.only(left: 72, right: 207),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 72, right: 165),
                  child: Divider(
                    color: Color.fromARGB(255, 10, 36, 57),
                    thickness: 2,
                  )),
              SizedBox(height: 32),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: _textcontroller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(39)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'USERNAME',
                    hintStyle:
                        TextStyle(color: Colors.white, letterSpacing: 1.5),
                  ),
                ),
              ),
              SizedBox(height: 18),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: _passwordcontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(39)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: 'PASSWORD',
                      hintStyle:
                          TextStyle(color: Colors.white, letterSpacing: 1.5),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              hide = hide ? false : true;
                              icon = hide
                                  ? Icon(
                                      Icons.visibility_off,
                                      color: Colors.white,
                                    )
                                  : Icon(
                                      Icons.visibility,
                                      color: Colors.white,
                                    );
                            });
                          },
                          icon: icon)),
                  obscureText: hide,
                ),
              ),
              SizedBox(height: 32),
              Container(
                width: 194,
                height: 46,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "LOGIN",
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
              const SizedBox(
                height: 49,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don’t have an account ? ",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('Sign Up');
                      },
                      child: Text('Register Now'))
                ],
              ),
              SizedBox(height: 12),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 33),
                  child: Row(
                    children: [
                      Container(
                        width: 147,
                        child: Divider(
                          color: Color.fromARGB(255, 10, 36, 57),
                          thickness: 2,
                        ),
                      ),
                      Text(
                        ' or ',
                        style: TextStyle(fontSize: 18),
                      ),
                      Container(
                        width: 147,
                        child: Divider(
                          color: Color.fromARGB(255, 10, 36, 57),
                          thickness: 2,
                        ),
                      )
                    ],
                  )),
              SizedBox(height: 34),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('images/flat-color-icons_google.png'),
                    Image.asset('images/logos_facebook.png'),
                    Image.asset('images/twitter 1.png'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
