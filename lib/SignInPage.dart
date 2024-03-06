import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'SignInPage.dart';
import 'constants.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 100),
                child: Text(
                  kAppName,
                  style: kSparkleMatchSignUpStyle,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: const Text(
                'Welcome Back!',
                style: kCreateAnAccountStyle,
              ),
            ),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'abc@gmail.com',
                  labelText: 'Email',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.pink), // Customize the underline color
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors
                            .pink), // Customize the focused underline color
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.pink), // Customize the underline color
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors
                            .pink), // Customize the focused underline color
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 60),
              child: RawMaterialButton(
                fillColor: Colors.pink[400],
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: Text(
                    'LOGIN',
                    style: kButtonStyle,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Forgot Password',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                shadows: [
                  Shadow(
                    color: Colors.grey,
                    blurRadius: 11,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 100),
              child: Text(
                'Or Continue With',
                style: kOrContinueTextStyle,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top:10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pink,
                    ),
                    padding:
                    const EdgeInsets.all(8.0), // Adjust the padding as needed
                    child: const Icon(
                      size: 20,
                      FontAwesomeIcons.facebookF,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pink,
                    ),
                    padding:
                    const EdgeInsets.all(8.0), // Adjust the padding as needed
                    child: const Icon(
                      size: 20,
                      FontAwesomeIcons.apple,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pink,
                    ),
                    padding:
                    const EdgeInsets.all(8.0), // Adjust the padding as needed
                    child: const Icon(
                      size: 20,
                      FontAwesomeIcons.google,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
