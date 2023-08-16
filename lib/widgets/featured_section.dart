import 'package:flutter/material.dart';
import 'package:flutter_academy/res/responsive.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.buttonLabel,
    required this.onActionPressed,
    this.imageLeft = true,
  }) : super(key: key);

  final bool imageLeft;
  final String image;
  final String title;
  final String description;
  final String buttonLabel;
  final Function() onActionPressed;

  @override
  Widget build(BuildContext context) {
    //prendo la larghezza del dispostivo
    final width = MediaQuery.of(context).size.width;
    return Container(
      //se schermo largo uso contenitore di altezza 600 se no lascio a null e andrò in colonna
      height: width > ScreenSizes.md ? null : 600,
      width: 1340,
      padding: const EdgeInsets.all(32.0),
      child: Flex(
        direction: getAxis(width),
        children: [
          if (imageLeft)
            Expanded(
              child: Image.asset(
                image,
                height: 450,
              ),
            ),
          const SizedBox(width: 20.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 20.0),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 18.0,
                      ),
                ),
                const SizedBox(height: 20.0),
                Center(
                  child: ElevatedButton(
                    onPressed: onActionPressed,
                    child: Text(buttonLabel),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: 20.0),
          if (!imageLeft)
            Expanded(
              child: Image.asset(
                image,
                height: 450,
              ),
            ),
        ],
      ),
    );
  }
}
