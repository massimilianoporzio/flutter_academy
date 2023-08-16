// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String image;
  final String title;
  final Function() onActionPressed;
  final String description;
  const CourseCard({
    Key? key,
    required this.image,
    required this.title,
    required this.onActionPressed,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: Card(
        child: InkWell(
          onTap: onActionPressed,
          child: Column(
            children: [
              Image.asset(
                image,
                height: 250,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(description),
            ],
          ),
        ),
      ),
    );
  }
}
