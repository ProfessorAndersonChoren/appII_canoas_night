import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String urlImage;
  final String name;
  const Profile({
    required this.name,
    required this.urlImage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(urlImage),
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }
}
