import "package:flutter/material.dart";

void main() {
runApp(const MyApp());
}

class MyApp extends StatefulWidget {


  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> images = [
    "https://images.app.goo.gl/zfLY6WJ3zo4HyyND8",
    "https://images.app.goo.gl/oZRjAtQtdcQhC5cE8",
    "images/stefan.jpg",
    "images/alaric.jpg",
    "images/april.jpg",
    "images/bonnie.jpg",
    "images/caroline.jpg",
    "images/elijah.jpg",
    "images/esther.jpg",
    "images/jeremy.jpg",
    "images/katerina.jpg",
    "images/klaus.jpg",
    "images/kol.jpg",
    "images/lexi.jpg",
    "images/liz.jpg",
    "images/matt.jpg",
    "images/rebekah.jpg",
    "images/shane.jpg",
    "images/tyler.jpg",
    "images/vicki.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Text("VAMPIRE DIARIES",
              style: TextStyle(
                  fontFamily: "Nosifer",
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            titleSpacing: 00.0,
            centerTitle: true,
            toolbarHeight: 60.2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(360)),
            elevation: 0.00,
            backgroundColor: Colors.red[700],
          ),
          body: Container(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0
                ),
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index){
                  return Image.network(images[index]);
                },
              )),
        )
    );
  }
}

