import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/theme_data.dart';

final currentTime = DateTime.now();
late String greeting;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final providerContext = Provider.of<TimeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Time of Day'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${greetingQuote()}',
              style: TextStyle(fontSize: 40),
            ),
            Text("Current Time:"),
            Text(
              "${currentTime.hour} :${currentTime.minute}",
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
                'The current time is ${providerContext.isDayTime ? "Day Time" : "Night Time"}, so the theme is set to ${providerContext.isDayTime ? "Light Theme" : "Dark Theme"}'),
          ],
        ),
      ),
    );
  }
}

String greetingQuote() {
  if (currentTime.hour > 6 && currentTime.hour < 12) {
    greeting = "Good Morning";
  } else if (currentTime.hour > 12 && currentTime.hour < 17) {
    greeting = "Good Afternoon";
  } else if (currentTime.hour > 17 && currentTime.hour < 20) {
    greeting = "Good Evening";
  } else {
    greeting = "Good Night";
  }
  return greeting;
}
