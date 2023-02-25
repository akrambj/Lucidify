import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Dream> trendingdream = [
    Dream("Dream 1",
        description: "Description 1", image: Image.asset("images/img1.png")),
    Dream("Dream 2",
        description: "Description 2", image: Image.asset("images/img2.png")),
    Dream("Dream 3",
        description: "Description 3", image: Image.asset("images/img3.png")),
    Dream("Dream 4",
        description: "Description 4", image: Image.asset("images/img1.png")),
  ];
  List<Dream> recomondationDr = [
    Dream("THE PERFECT DREAM",
        description: "DREAM THE UNREAL", image: Image.asset("images/img6.png")),
    Dream("THE PERFECT DREAM",
        description: "DREAM THE UNREAL", image: Image.asset("images/img7.png")),
    Dream("THE PERFECT DREAM",
        description: "DREAM THE UNREAL", image: Image.asset("images/img2.png")),
    Dream("THE PERFECT DREAM",
        description: "DREAM THE UNREAL", image: Image.asset("images/img1.png")),
    Dream("THE PERFECT DREAM",
        description: "DREAM THE UNREAL", image: Image.asset("images/img3.png")),
    Dream("THE PERFECT DREAM",
        description: "DREAM THE UNREAL", image: Image.asset("images/img3.png")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 19, 34),
      body: SafeArea(
        child: Container(
          // width: double.infinity,
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
                alignment: Alignment.topLeft,
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('Dashbord');
                    },
                    child: SvgPicture.asset(
                      'images/Vector.svg',
                      height: 15,
                      width: 21,
                      color: Colors.white,
                    )),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Explore',
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 2),
                          width: 166,
                          height: 36,
                          child: TextField(
                            cursorColor: Colors.white,
                            style: const TextStyle(color: Colors.white),
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.search_rounded,
                                color: Colors.grey,
                                size: 25,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    const BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    const BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'images/Logo.png',
                      width: 100,
                      height: 115,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 68,
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 38, vertical: 10),
                child: Row(
                  children: [
                    SvgPicture.asset('images/Vector1.svg'),
                    const SizedBox(
                      width: 17,
                    ),
                    const Text(
                      'Trending',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: trendingdream.map((e) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.only(top: 5),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromARGB(255, 159, 179, 107),
                                  Color(0xFFFFFFff)
                                ])),
                        width: 97,
                        height: 147,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(child: e.image!),
                            Text(
                              e.title!,
                              style: const TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              child: TextButton(
                                child: const Text(
                                  "more...",
                                  style: TextStyle(
                                      fontSize: 8, color: Colors.grey),
                                ),
                                onPressed: () {
                                  print(e.description);
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList()),
              ),
              Container(
                margin: EdgeInsets.only(left: 37, top: 50),
                child: Row(
                  children: [
                    Icon(
                      Icons.thumb_up,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      " Recomondations ",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              Flexible(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: recomondationDr.map((e) {
                      return ListTile(
                        tileColor: Colors.white,
                        title: Text(e.title!),
                        subtitle: Text(e.description!),
                        leading: e.image,
                      );
                    }).toList(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Dream {
  String? title = "title_";
  String? description;
  Image? image;
  Dream(this.title, {this.description, this.image});
}
