import 'package:flutter/material.dart';
import "./../widgets/backAppBar.dart";
import 'package:tutocourse/constants/theme.dart';

class MyInformation extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return SafeArea(
            child: Scaffold(
                appBar: PreferredSize(
                    preferredSize: Size.fromHeight(300),
                    child: BackAppBar(maintitle: "MyInformation"),
                ),
                body: Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget> [
                            Column(
                                children: <Widget>[
                                    inputBaru("Name"),
                                    SizedBox(height: 20),
                                    inputBaru("Email"),
                                    SizedBox(height: 20),
                                    inputBaru("Password"),
                                ],
                            ),

                            Container(
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                margin: EdgeInsets.only(top: 120),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: NowUIColors.orangenavi,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    shadowColor: NowUIColors.orangenavi,
                                  ),
                                  child: Text("Update", style: TextStyle(fontSize: 22)),

                                  ),
                            ),
                        
                            
                        ],
                    ),
                ),
            ),
        );
    }
}


inputBaru(String hint){
    return TextField(
      // controller: _passwordController,
      decoration: InputDecoration(
        hintText: "${hint}",
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
    );
}
