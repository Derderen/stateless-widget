import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: myHome());
  }
}

class myHome extends StatelessWidget {
  const myHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Color.fromARGB(255, 218, 244, 255),
            padding: const EdgeInsets.fromLTRB(30, 80, 30, 10),
            child: Column(
              children: [
                myProfile(),
                SizedBox(height: 10),
                myName(),
                SizedBox(height: 5),
                myJob(),
                Divider(
                  height: 30,
                  indent: 50,
                  endIndent: 50,
                  thickness: 5,
                ),
                SizedBox(height: 20),
                myWidget(
                  image: Image.network(
                      width: 50,
                      "https://cdn-icons-png.flaticon.com/512/159/159832.png"),
                  title: Text(
                    "no phone",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(width: 40),
                myWidget(
                  image: Image.network(
                      width: 50,
                      "https://cdn-icons-png.flaticon.com/512/324/324100.png"),
                  title: Text(
                    "derderen@gmail.com",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class myProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(999),
        child: Image.network(
            "https://cdns-images.dzcdn.net/images/artist/915349b0a246cd0fac1c16f6963e43bf/500x500.jpg"),
      ),
    );
  }
}

class myName extends StatelessWidget {
  const myName({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "Derderen",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class myJob extends StatelessWidget {
  const myJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "Pianist",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

class myWidget extends StatelessWidget {
  final Widget image;
  final Widget title;
  myWidget({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Row(
            children: [
              image,
              SizedBox(width: 20),
              title,
            ],
          ),
        ),
      ),
    );
  }
}
