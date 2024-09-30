import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:roamify/screens/home/components/stories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.camera_alt_outlined,
          size: 28,
        ),
        title: const Text('Roamify'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SvgPicture.asset('assets/ic_directs.svg'),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Stories(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Divider(
              ),
            ),
          ],
        ),
      ),
    );
  }
}
