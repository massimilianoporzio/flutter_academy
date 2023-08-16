import 'package:flutter/material.dart';
import 'package:flutter_academy/res/responsive.dart';

class CallToAction extends StatelessWidget {
  const CallToAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40.0),
      color: Colors.grey.shade200,
      height: 400,
      alignment: Alignment.center,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Text(
          "Ready to Begin Learning",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            print("register");
          },
          style: ElevatedButton.styleFrom(
            fixedSize: MediaQuery.of(context).size.width > ScreenSizes.md
                ? const Size(180, 50)
                : const Size(180, 60),
          ),
          child: const Text('Get Started'),
        )
      ]),
    );
  }
}
