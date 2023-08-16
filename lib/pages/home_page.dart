import 'package:flutter/material.dart';
import 'package:flutter_academy/res/assets.dart';
import 'package:flutter_academy/widgets/call_to_action.dart';
import 'package:flutter_academy/widgets/course_card.dart';
import 'package:flutter_academy/widgets/featured_section.dart';
import 'package:flutter_academy/widgets/footer.dart';
import 'package:flutter_academy/widgets/header.dart';

import '../res/responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MediaQuery.of(context).size.width > ScreenSizes.md
          ? null
          : Drawer(
              child: ListView(
                children: [
                  Container(
                    color: Theme.of(context).primaryColor,
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Flutter Academy",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    title: const Text("Home"),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text("Courses"),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text("About"),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text("Contact"),
                    onTap: () {},
                  ),
                ],
              ),
            ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          AppBar(
            title: Text('Flutter Academy',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground)),
            actions: (MediaQuery.of(context).size.width <= ScreenSizes.md)
                ? null
                : [
                    TextButton(
                      style: TextButton.styleFrom(
                          //foregroundColor: Colors.white,
                          ),
                      onPressed: () {},
                      child: const Text("Home"),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          //foregroundColor: Colors.white,
                          ),
                      onPressed: () {},
                      child: const Text("Courses"),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          //foregroundColor: Colors.white,
                          ),
                      onPressed: () {},
                      child: const Text("About"),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          // foregroundColor: Colors.white,
                          ),
                      onPressed: () {},
                      child: const Text("Contact"),
                    ),
                  ],
          ),
          const Header(),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Recent Courses",
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 450,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(
                  width: 20,
                ),
                CourseCard(
                  title: 'Taking Flutter to the Web',
                  image: Assets.course,
                  onActionPressed: () {},
                  description:
                      "Flutter web is stable. But there are no proper courses focused on Flutter web. So, in this course we will learn what Flutter web is good for and we will build a production grade application along the way.",
                ),
                const SizedBox(
                  width: 20,
                ),
                CourseCard(
                  title: 'Flutter for Everyone',
                  image: Assets.course,
                  onActionPressed: () {},
                  description:
                      "Flutter beginners' course for everyone. For those who know basic programming, can easily start developing Flutter apps after taking this course.",
                ),
              ],
            ),
          ),
          Center(
            child: FeaturedSection(
              image: Assets.instructor,
              title: 'Start teaching today',
              buttonLabel: "Become an instructor",
              onActionPressed: () {},
              description:
                  "Instructors from around the world teach millions of students on Udemy. We provide the tools and skills to teach what you love",
            ),
          ),
          const CallToAction(),
          Center(
            child: FeaturedSection(
              imageLeft: false,
              image: Assets.instructor,
              title: 'Transform your life through education',
              buttonLabel: "Start learning",
              onActionPressed: () {},
              description:
                  "Education changes your life beyond your imagination. Education enables you to achieve your dreams.",
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
