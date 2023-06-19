import "package:flutter/material.dart";
import "./../widgets/backAppBar.dart";
import './../constants/theme.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(300),
          // child: BackAppBar(maintitle: "Profile", searchButton: false),
          child: BackAppBar(maintitle: "Profile"),
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 7,
                      blurRadius: 20,
                    ),
                  ],
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://media.istockphoto.com/photos/portrait-of-handsome-latino-african-man-picture-id1007763808?k=20&m=1007763808&s=612x612&w=0&h=q4qlV-99EK1VHePL1-Xon4gpdpK7kz3631XK4Hgr1ls="),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Mr. Ahmad",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                "Student",
                style: TextStyle(
                    fontSize: 15, color: Colors.grey.withOpacity(0.8)),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 30),
                    profilelayout(context, textI: "My Information", ikon: Icons.people_outline),
                    SizedBox(height: 30),
                    profilelayout(context, textI: "Language", ikon: Icons.language_outlined),
                    SizedBox(height: 30),
                    profilelayout(context, textI: "Message", ikon: Icons.message),
                    SizedBox(height: 30),
                    profilelayout(context, textI: "About", ikon: Icons.info_outline),
                  ],
                ),
              ),
              Container(
                width: 150,
                height: 40,
                margin: EdgeInsets.only(top: 120),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: NowUIColors.orangenavi,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadowColor: NowUIColors.orangenavi,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.logout_outlined,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      SizedBox(width: 15),
                      Text("Logout", style: TextStyle(fontSize: 22)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

profilelayout(BuildContext context, {String textI = "", IconData ikon = Icons.people}) {

  return GestureDetector(
        onTap:(){
            Navigator.pushNamed(context, '/myinformation');
        },
        child: Row(
            children: <Widget>[
              Icon(
                ikon,
                color: Colors.black,
                size: 24.0,
              ),
              SizedBox(width: 25),
              Text(textI, style: TextStyle(fontSize: 21)),
            ],
          ),
  );

}
