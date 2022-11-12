import 'package:axel_mobile/utils/colors.dart';
import 'package:flutter/material.dart';

abstract class AxelStyles {
  static const loraTitleBlack = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
    fontSize: 25,
    color: AxelColors.black,
  );

  static const loraTextBlack = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 13,
    color: AxelColors.black,
  );

  static const lora15Black = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 15,
    color: AxelColors.white,
  );
}
