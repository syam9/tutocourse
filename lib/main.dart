import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screens/signinpage.dart';
import './screens/splashscreen.dart';
import './screens/signuppage.dart';
import './screens/home.dart';
import './screens/profile.dart';
import './screens/mycourse.dart';
import './screens/subMycourse.dart';
import './screens/myinformation.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {

        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
            statusBarColor: Colors.black,
        ));

        return MaterialApp(
            title: 'Tutocourse',
            debugShowCheckedModeBanner: false,
            initialRoute: '/splashscreen',
            routes: <String, WidgetBuilder>{
                '/splashscreen': (BuildContext context) => new SplashScreen(),
                '/signinpage': (BuildContext context) => new SigninPage(),
                '/signuppage': (BuildContext context) => new SignupPage(),
                '/home': (BuildContext context) => new HomePage(),
                '/profile': (BuildContext context) => new ProfilePage(),
                '/mycourse': (BuildContext context) => new MyCoursePage(),
                '/submycourse': (BuildContext context) => new SubMycoursePage(),
                '/myinformation': (BuildContext context) => new MyInformation(),

            }
        );
    }
}


