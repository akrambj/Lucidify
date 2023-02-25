import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => TestState();
}

class TestState extends State<Test> {
  final _textcontroller = TextEditingController();
  final _passcontroller = TextEditingController();
  bool hide = true;
  var icon = Icons.visibility_off;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: _textcontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Email',
                    suffixIcon: Icon(Icons.email)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: _passcontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            hide =  hide ? false : true;
                            icon =  hide ? Icons.visibility_off : Icons.visibility;
                            
                          });
                        },
                        icon: Icon(icon))),
                obscureText: hide,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Login")),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(width: 130,child: Divider(thickness: 1,color: Colors.black),margin: EdgeInsets.symmetric(horizontal: 20),),
                Text("Or",style: TextStyle(fontSize: 20,),),
                Container(width: 130,child: Divider(thickness: 1,color: Colors.black),margin: EdgeInsets.symmetric(horizontal: 20),)

              ],
            ),

          ],
        ));
  }
}
