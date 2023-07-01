import 'package:flutter/material.dart';

class Size {
  final String size;
  final Color bg;
  final Color txtcol;

  const Size(
      {required this.size, this.bg = Colors.black, this.txtcol = Colors.white});
}

List<Size> size = [
  Size(size: '39', bg: Colors.white, txtcol: Colors.black),
  Size(size: '40'),
  Size(size: '41'),
  Size(size: '42'),
  Size(size: '43'),
  Size(size: '44'),
  Size(size: '42'),
  Size(size: '43'),
  Size(size: '44'),
];
