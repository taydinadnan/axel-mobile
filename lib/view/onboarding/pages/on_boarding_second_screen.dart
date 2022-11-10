import 'package:axel_mobile/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingSecondScreen extends StatelessWidget {
  const OnBoardingSecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AxelColors.axelBG,
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SafeArea(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Image.asset(
                      "assets/illustrations/cloud2.png",
                      height: 200,
                    ),
                  ),
                  Padding(
                    // padding: const EdgeInsets.only(top: 100.0),
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 8,
                    ),

                    child: SvgPicture.asset(
                      "assets/illustrations/vectorLine2.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 4.2,
                        left: MediaQuery.of(context).size.width / 3.5),
                    child: Image.asset(
                      "assets/illustrations/plane2.png",
                      height: 60,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
