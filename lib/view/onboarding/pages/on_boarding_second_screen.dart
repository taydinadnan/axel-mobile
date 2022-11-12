import 'package:axel_mobile/utils/axel_styles.dart';
import 'package:axel_mobile/utils/colors.dart';
import 'package:axel_mobile/utils/widgets/action_button.dart';
import 'package:axel_mobile/utils/widgets/onboarding_title.dart';
import 'package:axel_mobile/view/onboarding/pages/on_boarding_first_screen.dart';
import 'package:axel_mobile/view/onboarding/pages/on_boarding_third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingSecondScreen extends StatelessWidget {
  OnBoardingSecondScreen({Key? key}) : super(key: key);

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

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
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Image.asset(
                      "assets/illustrations/cloud2.png",
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
                      top: MediaQuery.of(context).size.height / 4.6,
                      left: MediaQuery.of(context).size.width / 4,
                    ),
                    child: Image.asset(
                      "assets/illustrations/plane2.png",
                      height: 60,
                    ),
                  ),
                ],
              ),
            ),
            const OnBoardingTitle(title: "Select Your Currency"),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FilterChip(
                      label: const Text(
                        "USD",
                        style: AxelStyles.lora15Black,
                      ),
                      onSelected: (value) {},
                      selected: true,
                      selectedColor: Colors.green.shade300,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    const SizedBox(width: 5),
                    FilterChip(
                      label: const Text(
                        "EURO",
                        style: AxelStyles.lora15Black,
                      ),
                      onSelected: (value) {},
                      backgroundColor: AxelColors.axelBG2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    const SizedBox(width: 5),
                    FilterChip(
                      label: const Text(
                        "POUND",
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
                  child: DropdownButton<String>(
                    hint: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Select"),
                    ),
                    items: <String>['TL', 'POUND', 'USD', 'EURO']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: AxelStyles.lora15Black,
                        ),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                )
              ],
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
                              const OnBoardingFirstScreen(),
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
