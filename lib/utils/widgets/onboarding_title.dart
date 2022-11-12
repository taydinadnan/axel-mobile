import 'package:axel_mobile/utils/axel_styles.dart';
import 'package:flutter/material.dart';

class OnBoardingTitle extends StatelessWidget {
  const OnBoardingTitle({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: AxelStyles.loraTitleBlack);
  }
}
