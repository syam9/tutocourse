import 'package:flutter/material.dart';
import "./../widgets/backAppBar.dart";
import 'package:tutocourse/constants/theme.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyCoursePage extends StatefulWidget {
  @override
  _MyCoursePage createState() => new _MyCoursePage();
}

class _MyCoursePage extends State<MyCoursePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.red,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(300),
          // child: BackAppBar(maintitle: "Profile", searchButton: false),
          child: BackAppBar(maintitle: "My Course"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 23),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Summary",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: kotak(nombo: "14", title: "All Course"),
                  ),
                  Container(
                    child: kotak1(nombo: "14", title: "All Course"),
                  ),
                  Container(
                    child: kotak1(nombo: "14", title: "All Course"),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFFF1D7874),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Learn Photoshop",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    SizedBox(height: 5.0),
                    Text("Edisi Kedua",
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                    Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Column(
                        children: <Widget>[
                          LinearPercentIndicator(
                            width: MediaQuery.of(context).size.width - 100,
                            animation: true,
                            lineHeight: 15.0,
                            animationDuration: 2000,
                            percent: 0.9,
                            center: Text("90.0%",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFFF1D7874),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Learn Photoshop",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    SizedBox(height: 5.0),
                    Text("Edisi Kedua",
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                    Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Column(
                        children: <Widget>[
                          LinearPercentIndicator(
                            width: MediaQuery.of(context).size.width - 100,
                            animation: true,
                            lineHeight: 15.0,
                            animationDuration: 2000,
                            percent: 0.9,
                            center: Text("90.0%",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

kotak({String? nombo, String? title}) {
  return Row(
    children: [
      Container(
        padding: EdgeInsets.all(10),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: NowUIColors.orangenavi,
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 4,
              offset: Offset(4, 8),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${nombo}",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            Text("${title}",
                style: TextStyle(fontSize: 18, color: Colors.white)),
          ],
        ),
      ),
    ],
  );
}

kotak1({String? nombo, String? title}) {
  return Row(
    children: [
      Container(
        padding: EdgeInsets.all(10),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey.withOpacity(0.5),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 4,
              offset: Offset(4, 8),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${nombo}",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            Text("${title}",
                style: TextStyle(fontSize: 18, color: Colors.black)),
          ],
        ),
      ),
    ],
  );
}
