import 'package:axel_mobile/utils/axel_styles.dart';
import 'package:axel_mobile/utils/colors.dart';
import 'package:axel_mobile/utils/widgets/action_button.dart';
import 'package:axel_mobile/utils/widgets/onboarding_title.dart';
import 'package:axel_mobile/view/onboarding/pages/on_boarding_second_screen.dart';
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      top: MediaQuery.of(context).size.height / 10,
                    ),

                    child: SvgPicture.asset(
                      "assets/illustrations/vectorLine1.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 5.7,
                        left: MediaQuery.of(context).size.width / 10),
                    child: Image.asset(
                      "assets/illustrations/plane1PNG.png",
                      height: 60,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: const [
                  OnBoardingTitle(title: "Track Your Expanses"),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300,
                      child: Text(
                        "The best platform where you can take control of your personal expenses and save money.",
                        textAlign: TextAlign.center,
                        style: AxelStyles.loraTextBlack,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: CustomActionButton(
                "Get Started",
                () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) =>
                          OnBoardingSecondScreen(),
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
