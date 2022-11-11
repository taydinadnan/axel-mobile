import 'package:axel_mobile/utils/colors.dart';
import 'package:axel_mobile/utils/widgets/action_button.dart';
import 'package:axel_mobile/view/onboarding/pages/on_boarding_fourth_screen.dart';
import 'package:axel_mobile/view/onboarding/pages/on_boarding_second_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingThirdScreen extends StatelessWidget {
  const OnBoardingThirdScreen({Key? key}) : super(key: key);

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
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 3.3,
                    ),
                    child: Image.asset(
                      "assets/illustrations/cloud3.png",
                      height: 200,
                    ),
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
                        top: MediaQuery.of(context).size.height / 7.3,
                        left: MediaQuery.of(context).size.width / 2),
                    child: Image.asset(
                      "assets/illustrations/plane3.png",
                      height: 60,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomActionButton(
                    "Back",
                    () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              const OnBoardingSecondScreen(),
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
                    width: MediaQuery.of(context).size.width / 3,
                  ),
                  const SizedBox(width: 10),
                  CustomActionButton(
                    "Next",
                    () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              const OnBoardingFourthScreen(),
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
                    width: MediaQuery.of(context).size.width / 3,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
