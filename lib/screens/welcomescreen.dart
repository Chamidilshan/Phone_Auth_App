import 'package:flutter/material.dart';
import 'package:phone_auth_app/widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/image1.png',
                  height: 300.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Let\'s get started',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Never a better time than now to start',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: CustomButton(
                    onPressed: () {},
                    text: 'Get Started',

                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
