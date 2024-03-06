import 'package:dating_app/SignUpPage.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    ),
  );
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(), // Pushes "Welcome To" and "SparkMatch" to the center of the screen
            const Center(
              child: Text('Welcome To', style: kTextStyle),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Spark Match',
                style: kSparkleMatchStyle,
              ),
            ),
            const Spacer(), // Pushes "Spark Love Together" slightly above the button
            const Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text(
                'Spark Love Together',
                style: kTagLine,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 45.0),
              child: RawMaterialButton(
                fillColor: Colors.pink[400],
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),

                  child: Text(
                    'GET STARTED',
                    style: kButtonStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
