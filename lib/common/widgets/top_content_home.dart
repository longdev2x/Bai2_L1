import 'package:exercies2/common/strings.dart';
import 'package:flutter/material.dart';

class TopContentHome extends StatelessWidget {
  const TopContentHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Flutter Là Gì?",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 20),
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage("assets/images/flutter_banner.png"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          Strings.mainContent,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
