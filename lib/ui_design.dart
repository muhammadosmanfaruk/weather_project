import 'package:flutter/material.dart';

class UIDesign extends StatelessWidget {
  const UIDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Weather Design",
          style: TextStyle(fontWeight: FontWeight.w100, fontSize: 18, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.search, color: Colors.white,),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.menu, color: Colors.white,),
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Image(
              image: NetworkImage(
                  "https://raw.githubusercontent.com/itzpradip/flutter-weather-app-ui/main/assets/cloudy.jpeg"),
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.black38),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 70,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 0,left: 15.0),
                              child: Text("Chattogram",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                "9:54 AM - Tuesday, 9 Dec 2021",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 320,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text("24\u2103",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: ,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.white30)
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 25, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 60.0, right: 30.0),
                              child: Column(
                                children: [
                                  Text("Wind", style: TextStyle(
                                    color: Colors.white,
                                  ),),
                                  Text("10", style: TextStyle(
                                    color: Colors.white,
                                  ),),
                                  Text("km/h", style: TextStyle(
                                    color: Colors.white,
                                  ),),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        height: 5,
                                        width: 50,
                                        color: Colors.white38,
                                      ),
                                      Container(
                                        height: 5,
                                        width: 10,
                                        color: Colors.greenAccent,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width:30),
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0, right: 50.0),
                              child: Column(
                                children: [
                                  Text("Rain", style: TextStyle(
                                    color: Colors.white,
                                  )),
                                  Text("10", style: TextStyle(
                                    color: Colors.white,
                                  ),),
                                  Text("%", style: TextStyle(
                                    color: Colors.white,
                                  ),),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        height: 5,
                                        width: 50,
                                        color: Colors.white38,
                                      ),
                                      Container(
                                        height: 5,
                                        width: 5,
                                        color: Colors.redAccent,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width:30),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right:70),
                              child: Column(
                                children: [
                                  Text("Humidy", style: TextStyle(
                                    color: Colors.white,
                                  ),),
                                  Text("10", style: TextStyle(
                                    color: Colors.white,
                                  ),),
                                  Text("%", style: TextStyle(
                                    color: Colors.white,
                                  ),),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        height: 5,
                                        width: 50,
                                        color: Colors.white38,
                                      ),
                                      Container(
                                        height: 5,
                                        width: 3,
                                        color: Colors.redAccent,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
