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
        theme: ThemeData(scaffoldBackgroundColor: Colors.black),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            toolbarHeight: 50,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 32, 32, 32),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    )),
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 32, 32, 32),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Icon(
                        Icons.badge,
                        color: Colors.white,
                      ),
                    )),
              ],
            ),
          ),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Nike Air Force 1",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Mens's Shoes",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                            color: Colors.white70),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      width: 370,
                      height: 340,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: BabylonJSViewer(
                          src: 'assets/shoes.glb',
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Chooes color",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
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
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      width: colorshoes[index].borderw,
                                      color: (colorshoes[index].borderco)!,
                                    ),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            colorshoes[index].shoesColor))),
                              ),
                            );
                          })),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Size",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
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
                                alignment: Alignment.center,
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: (size[index].bg)!,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: .4,
                                    color: Colors.grey,
                                  ),
                                ),
                                child: Text(
                                  size[index].size,
                                  style: TextStyle(
                                      color: (size[index].txtcol)!,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            );
                          })),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white70),
                        ),
                        Text(
                          "\$232",
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    Container(
                      width: 290,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
