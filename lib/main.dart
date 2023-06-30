import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:flutter/material.dart';

import 'package:nikeshoes/model/color_Shoes.dart';
import 'package:nikeshoes/model/size.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Text("Nike Air Force 1"),
                Text("Menss Shoes"),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 400,
                    height: 400,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: BabylonJSViewer(
                      src: 'assets/shoes.glb',
                    ),
                  ),
                ),
                Text("Chooes color"),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                      height: 100,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: colorshoes.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(
                                      width: .4,
                                      color: Colors.grey,
                                    ),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            colorshoes[index].shoesColor))),
                              ),
                            );
                          })),
                ),
                Text("Size"),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                      height: 50,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: size.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  border: Border.all(
                                    width: .4,
                                    color: Colors.grey,
                                  ),
                                ),
                                child: Text(size[index].size),
                              ),
                            );
                          })),
                )
              ],
            ),
          ),
        ));
  }
}
