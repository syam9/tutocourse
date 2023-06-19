import 'package:flutter/material.dart';


class BackAppBar extends StatelessWidget {
    final String maintitle;
    // final Boolean searchButton;

    BackAppBar({this.maintitle="null"});
    // BackAppBar({this.maintitle="null", this.searchButton=false});

    @override
    Widget build(BuildContext context) {
        // MediaQueryData mediaQuery = MediaQuery.of(context);
        return Container(
                child: Container(
                    height: 90,
                    color: Colors.transparent,
                    child: Row(
                        children: <Widget>[
                            Expanded(
                                flex: 1,
                                child: IconButton(
                                    icon: Icon(Icons.arrow_back_rounded),
                                    iconSize: 28, 
                                    color: Colors.black,
                                    onPressed: (){
                                        Navigator.of(context).pop();

                                    },
                                ),
                            ),

                            Expanded(
                                flex: 3, 
                                child: Text(maintitle,style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)), 
                            ),


                            // Expanded(
                            //     flex: 1, 
                            //     child: if(searchButton = true) { 
                            //         IconButton(
                            //         icon: Icon(Icons.search),
                            //         iconSize: 28, 
                            //         color: Colors.black,
                            //         onPressed:() {
                            //             print("Testing");
                            //
                            //         },
                            //     ),
                            //     } else {
                            //
                            //     }
                            // ),


                        ],
                    ),
            ),


        );
    }
}



// return SafeArea(
//     child: Scaffold(
//        appBar: AppBar(title: Text("testing"), backgroundColor: Colors.white, actions: <Widget>[
//             IconButton(
//                 icon: const Icon(Icons.search),
//                 tooltip: 'search',
//                 onPressed: (){},
//             ),
//        ]),
//        body: Container(
//             child: Text("sdada"),
//         ), 
//     ),
// );
