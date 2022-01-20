import 'package:flutter/material.dart';
import 'package:univfinder/utils/colors.dart';
import 'package:univfinder/utils/fade_animation.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/landing_pageBG.jpeg'),
              fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                blackColor.withOpacity(.9),
                blackColor.withOpacity(.8),
                blackColor.withOpacity(.2),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 35, right: 35, bottom: 35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const FadeAnimation(
                  1.4,
                  Text(
                    'Welcome students',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: whiteColor),
                    textAlign: TextAlign.center,
                  ),
                  Offset(0, 1),
                ),
                const SizedBox(height: 10),
                FadeAnimation(
                  1.6,
                  Text(
                    "We will help you find the best fit university for your academic dreams.",
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: whiteColor.withOpacity(0.45),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Offset(0, 1),
                ),
                const SizedBox(
                  height: 25,
                ),
                FadeAnimation(
                  1.8,
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, 'tabsPage', (route) => false);
                      },
                      icon:
                          const Icon(Icons.arrow_forward_ios, color: redAccent),
                    ),
                  ),
                  const Offset(0, 1),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
