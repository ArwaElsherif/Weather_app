import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('there is no weather 😔', style: TextStyle(fontSize: 30)),
            Text('start searching now 🔎', style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
    );
  }
}
