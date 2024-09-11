import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultScreen extends StatelessWidget {
  final double result;
  const ResultScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    String getText(double result) {
      if (result >= 25) {
        return 'You are Overweight';
      } else if (result > 18.5) {
        return 'You are Normal';
      } else {
        return 'You are Underweight';
      }
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Result",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 30,
              ),
            ),
            Text(
              "${result.toInt()}",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 50),
            Text(
              "${getText(result)}",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: Size(200, 40),
              ),
              child: Text(
                "Back",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
