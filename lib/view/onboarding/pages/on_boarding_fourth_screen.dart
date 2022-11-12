import 'package:axel_mobile/utils/axel_styles.dart';
import 'package:axel_mobile/utils/colors.dart';
import 'package:axel_mobile/utils/widgets/action_button.dart';
import 'package:axel_mobile/utils/widgets/onboarding_title.dart';
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
            const OnBoardingTitle(title: "Select Your Limit"),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FilterChip(
                      side: BorderSide(),
                      label: const Text(
                        "\$100",
                        style: AxelStyles.lora15Black,
                      ),
                      onSelected: (value) {},
                      selected: false,
                      backgroundColor: AxelColors.axelBG2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    const SizedBox(width: 5),
                    FilterChip(
                      label: const Text(
                        "\$500",
                        style: AxelStyles.lora15Black,
                      ),
                      onSelected: (value) {},
                      backgroundColor: AxelColors.axelBG2,
                      selected: true,
                      selectedColor: Colors.green.shade300,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    const SizedBox(width: 5),
                    FilterChip(
                      label: const Text(
                        "\$1000",
                        style: AxelStyles.lora15Black,
                      ),
                      onSelected: (value) {},
                      backgroundColor: AxelColors.axelBG2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey.shade200,
                  ),
                  width: 100,
                  height: 40,
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: "\$Custom", border: InputBorder.none),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
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
