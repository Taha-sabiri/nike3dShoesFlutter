import 'package:flutter/material.dart';

class ColorsShoes {
  final String shoesColor;
  final double borderw;
  final Color? borderco;

  const ColorsShoes(
      {required this.shoesColor,
      this.borderco = const Color.fromARGB(255, 107, 107, 107),
      this.borderw = 0.4});
}

List<ColorsShoes> colorshoes = [
  ColorsShoes(
    borderw: 2,
    borderco: Colors.white,
    shoesColor: 'assets/air-force-1-07-mens-shoes-jBrhbr.png',
  ),
  ColorsShoes(
    shoesColor: 'assets/air-force-1-07-shoes-rWtqPn.png',
  ),
  ColorsShoes(
    shoesColor: 'assets/air-force-1-big-kids-shoes-M7mcL9.png',
  ),
  ColorsShoes(
    shoesColor: 'assets/air-force-1-07-mens-shoes-jBrhbr.png',
  ),
  ColorsShoes(
    shoesColor: 'assets/air-force-1-07-shoes-rWtqPn.png',
  ),
  ColorsShoes(
    shoesColor: 'assets/air-force-1-big-kids-shoes-M7mcL9.png',
  ),
  ColorsShoes(
    shoesColor: 'assets/air-force-1-07-mens-shoes-jBrhbr.png',
  ),
  ColorsShoes(
    shoesColor: 'assets/air-force-1-07-shoes-rWtqPn.png',
  ),
  ColorsShoes(
    shoesColor: 'assets/air-force-1-big-kids-shoes-M7mcL9.png',
  ),
];
