import 'package:axel_mobile/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingFirstScreen extends StatelessWidget {
  const OnBoardingFirstScreen({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 4),
                    child: Image.asset(
                      "assets/illustrations/cloud1.png",
                      height: 200,
                    ),
                  ),
                  Padding(
                    // padding: const EdgeInsets.only(top: 100.0),
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 8,
                    ),

                    child: SvgPicture.asset(
                      "assets/illustrations/vectorLine1.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 4.6,
                        left: MediaQuery.of(context).size.width / 10),
                    child: Image.asset(
                      "assets/illustrations/plane1PNG.png",
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
