import 'package:flutter/material.dart';
import "./../widgets/backAppBar.dart";
import 'package:tutocourse/constants/theme.dart';

class SubMycoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(300),
          // child: BackAppBar(maintitle: "Profile", searchButton: false),
          child: BackAppBar(maintitle: "My Course"),
        ),
        body: Stack(
          children: [
            Container(
              height: 220,
              color: Color(0xFFF071E22),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Text("Learn Photoshop",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Text("Lorem Ipsum",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 20)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: MediaQuery.of(context).size.width / 2 + 130,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 12,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://media.istockphoto.com/photos/portrait-of-handsome-latino-african-man-picture-id1007763808?k=20&m=1007763808&s=612x612&w=0&h=q4qlV-99EK1VHePL1-Xon4gpdpK7kz3631XK4Hgr1ls="),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(25),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text("RM12",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold)),
                                        Container(
                                          width: 80,
                                          height: 30,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            color: NowUIColors.orangenavi
                                                .withOpacity(0.2),
                                          ),
                                          child: Text("Live",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: NowUIColors.orangenavi,
                                                  fontSize: 24)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Text("Title",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(height: 10),
                                    Text("Subtitle",
                                        style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            fontSize: 20)),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 40.0,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        print("berhasil");
                                      },
                                      child: Text("Sign In",
                                          style: TextStyle(fontSize: 22)),
                                      style: ElevatedButton.styleFrom(
                                        primary: NowUIColors.orangenavi,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
