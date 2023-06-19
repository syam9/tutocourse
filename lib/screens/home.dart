import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../constants/theme.dart';

class HomePage extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  List itemo = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Welcome to TutoCourse",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Hi All! Good Morning",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                    
                    GestureDetector(
                        onTap:(){
                            print("Testiing");
                            Navigator.pushNamed(context, '/profile');

                        },
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://media.istockphoto.com/photos/portrait-of-handsome-latino-african-man-picture-id1007763808?k=20&m=1007763808&s=612x612&w=0&h=q4qlV-99EK1VHePL1-Xon4gpdpK7kz3631XK4Hgr1ls="),
                            ),
                          ),
                        ),
                    ),

                  ],
                ),
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 150.0,
                      initialPage: 0,
                      enableInfiniteScroll: false,
                      disableCenter: true,
                      aspectRatio: 2.0,
                      viewportFraction: 0.95,
                      enlargeCenterPage: false,
                    ),
                    items: itemo.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return GestureDetector(
                              onTap: () {
                                print("Testing");
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(right: 5.0),
                                padding: EdgeInsets.only(left: 40),
                                decoration: BoxDecoration(
                                  color: NowUIColors.blacknavi,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 3,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://media.karousell.com/media/photos/products/2021/11/9/usb_npfw50_dummy_battery_for_s_1636446222_896df6d5_progressive.jpg"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                // child: Text(
                                //   'text $i',
                                //   style: TextStyle(
                                //       fontSize: 16.0, color: Colors.white),
                                // )
                              ));
                        },
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "My Course",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.0),


                    GestureDetector(
                        onTap: (){
                            Navigator.pushNamed(context, '/mycourse');

                        },
                        child: Stack(
                          children: <Widget>[
                              Container(
                                // color: Colors.red,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 3,
                                        spreadRadius: 0),
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 20.0, horizontal: 20.0),
                                      margin: EdgeInsets.only(left: 15.0),
                                      height: 80.0,
                                      width: 80.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: NowUIColors.orangenavi,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.white, spreadRadius: 3),
                                        ],
                                      ),
                                      child: Center(
                                        // child: Text("icon",
                                        //     style: TextStyle(
                                        //         color: Colors.white, fontSize: 20)),
                                        child: Icon(
                                          Icons.auto_stories_outlined,
                                          color: Colors.white,
                                          size: 40.0,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 20.0),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("14",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold)),
                                        Text("Total Course",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: NowUIColors.hintcolor)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                            // Row(
                            //     mainAxisAlignment: MainAxisAlignment.start,
                            //     children: <Widget> [
                            //         Container(
                            //             padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                            //             height: 80.0,
                            //             width: 80.0,
                            //             color: Colors.white,
                            //             child: Center(
                            //                 child: Text("Text", style: TextStyle(color: Colors.white, fontSize: 20)),
                            //             ),
                            //         ),
                            //
                            //         Column(
                            //             children: <Widget> [
                            //                 Text("14"),
                            //                 Text("Total Course"),
                            //
                            //             ],
                            //         ),
                            //     ],
                            // ),
                          ],
                        ),

                    ),

                    SizedBox(height: 20),
                    TextField(
                      // controller: _passwordController,
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(color: NowUIColors.hintcolor),
                        // labelStyle: TextStyle(
                        //     fontSize: 18.0, color: Colors.black),
                        fillColor: NowUIColors.login.withOpacity(0.5),
                        filled: true,
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Top Course in Design",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "VIEW ALL",
                              style: TextStyle(
                                color: NowUIColors.orangenavi,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.0),

                        GestureDetector(
                            onTap:() {

                                Navigator.pushNamed(context, '/submycourse');

                            },
                            child: Container(
                              height: 220,
                              child: ListView.builder(
                                itemCount: 5,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      margin: EdgeInsets.only(right: 8),
                                      height: 200,
                                      width: 160,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 2,
                                            offset: Offset(
                                                0, 3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 1,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10)),
                                              child: Container(
                                                width: double.infinity,
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Colors.white,
                                                ),
                                                child: Image.network(
                                                  "https://media.karousell.com/media/photos/products/2021/11/9/usb_npfw50_dummy_battery_for_s_1636446222_896df6d5_progressive.jpg",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              padding: EdgeInsets.all(10),
                                              alignment: Alignment.centerLeft,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text("Lean Photoshop",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontSize: 18)),
                                                  Text("Lorem Ipsum",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 14)),
                                                  SizedBox(height: 20),
                                                  Text("RM12",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontSize: 20,
                                                          color: NowUIColors
                                                              .orangenavi)),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
