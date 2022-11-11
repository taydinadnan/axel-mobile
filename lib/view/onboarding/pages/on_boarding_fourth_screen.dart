import 'package:axel_mobile/utils/colors.dart';
import 'package:axel_mobile/utils/widgets/action_button.dart';
import 'package:axel_mobile/view/onboarding/pages/on_boarding_third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingFourthScreen extends StatelessWidget {
  const OnBoardingFourthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AxelColors.axelBG,
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SafeArea(
              child: Stack(
                children: [
                  Image.asset(
                    "assets/illustrations/cloud4.png",
                    height: 200,
                  ),
                  Padding(
                    // padding: const EdgeInsets.only(top: 100.0),
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 10,
                    ),

                    child: SvgPicture.asset(
                      "assets/illustrations/vectorLine1.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 15,
                        left: MediaQuery.of(context).size.width / 1.3),
                    child: Image.asset(
                      "assets/illustrations/plane2.png",
                      height: 60,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: CustomActionButton(
                "Done",
                () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) =>
                          const OnBoardingThirdScreen(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero,
                    ),
                  );
                },
                backgroundColor: AxelColors.axelBG2,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                splashColor: Colors.grey.shade300,
              ),
            )
          ],
        ),
      ),
    );
  }
}
