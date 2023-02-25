import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _textcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  bool hide = true;
  Icon icon = Icon(Icons.visibility_off);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 1, 19, 34),
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 0, 23, 44),
                  Color.fromARGB(112, 86, 1, 143),
                  Color.fromARGB(205, 253, 164, 238),
                ],
              ),
            ),
            child: SafeArea(
                child: Column(children: [
              Container(
                  alignment: Alignment.center,
                  child:
                      Image.asset('images/Logo.png', height: 200, width: 180)),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(right: 215),
                child: Text(
                  'Sing Up',
                  style: TextStyle(
                      fontSize: 24,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(right: 215),
                  width: 90,
                  child: Divider(
                    color: Color.fromARGB(255, 10, 36, 57),
                    thickness: 3,
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  controller: _textcontroller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(39)),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    hintText: 'USERNAME',
                    hintStyle: TextStyle(
                      fontSize: 13,
                      color: Color.fromARGB(100, 255, 255, 255),
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 40, right: 165),
                child: Divider(color: Color(0x0A2439)),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  controller: _textcontroller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(39)),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    hintText: 'EMAIL',
                    hintStyle: TextStyle(
                      fontSize: 13,
                      letterSpacing: 1.5,
                      color: Color.fromARGB(100, 255, 255, 255),
                    ),
                    suffixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 40, right: 165),
                child: Divider(color: Color(0x0A2439)),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  controller: _passwordcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(39)),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    hintText: 'PASSWORD',
                    hintStyle: TextStyle(
                      fontSize: 13,
                      letterSpacing: 1.5,
                      color: Color.fromARGB(100, 255, 255, 255),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          hide = hide ? false : true;
                          icon = hide
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility);
                        });
                      },
                      icon: icon,
                    ),
                  ),
                  obscureText: hide,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 194,
                height: 46,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "SIGN UP",
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
                height: 20,
              ),
              const Text(
                "Already  have an account ?",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('Login');
                  },
                  child: Text('Login')),
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
            ]))));
  }
}
