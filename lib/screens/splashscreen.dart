import 'dart:async';
import 'package:flutter/material.dart';
import './signinpage.dart';


class SplashScreen extends StatefulWidget {
    const SplashScreen({Key key}) : super(key: key);

    @override
    State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
    @override
    void initState() {
        super.initState();
        new Future.delayed(const Duration(seconds: 3),
            () => Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => SigninPage()),
            )
        );
    }

    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            body: Stack(
                children: <Widget> [
                    Container(
                        decoration: const BoxDecoration(color: Color(0xFF071E22)),
                    ),
                    Center(
                        child: Image.asset('assets/images/splashscreen.png'),
                    ),
                ],
            ),
        );
    }

}

