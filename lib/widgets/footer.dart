import 'package:flutter/material.dart';
import 'package:flutter_academy/res/responsive.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      // height: 300, //responsive! non lo uso +
      color: Colors.grey.shade900,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
          ),
          //tre expanded nella row mi prendono 1/3 ciascuno
          Flex(
            direction: getAxis(width),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (width > ScreenSizes.md)
                const SizedBox(
                  width: 20,
                ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FooterLink("Home"),
                  FooterLink("About"),
                  FooterLink("Download Apps"),
                  FooterLink("Contact"),
                ],
              ),
              if (width > ScreenSizes.md) const Spacer(),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FooterLink("Blog"),
                  FooterLink("Help and Support"),
                  FooterLink("Join Us"),
                ],
              ),
              if (width > ScreenSizes.md) const Spacer(),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FooterLink("Terms"),
                  FooterLink("Privacy Policy"),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Flex(
            direction: getAxis(width),
            children: [
              Padding(
                padding: width > ScreenSizes.md
                    ? const EdgeInsets.only(left: 20.0)
                    : const EdgeInsets.all(10),
                child: Text(
                  "Flutter Academy",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
              width > ScreenSizes.md
                  ? const Spacer()
                  : const SizedBox(
                      height: 10,
                    ), //mi sposta il resto alla fine
              Padding(
                padding: width > ScreenSizes.md
                    ? const EdgeInsets.only(right: 30.0)
                    : const EdgeInsets.only(bottom: 10),
                child: Text(
                  "© 2018 Flutter Academy",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
          //expanded per l'altezza della colonna che è quella del container (300)
        ],
      ),
    );
  }
}

class FooterLink extends StatelessWidget {
  const FooterLink(this.text, {Key? key}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }
}
