import 'package:flutter/material.dart';
import './../constants/theme.dart';

class Input extends StatelessWidget {
    final String? placeholder;
    final TextEditingController? controller;

    Input({
        this.placeholder,
        this.controller,
    });

    @override
    Widget build(BuildContext context) {
        return TextField(
           controller: controller, 
           style: TextStyle(height: 0.55, fontSize: 13.0, color: NowUIColors.blacknavi), 
           decoration: InputDecoration(
                filled: true,
                fillColor: NowUIColors.blacknavi.withOpacity(0.5),
                hintStyle: TextStyle(color: NowUIColors.blacknavi),
                enableBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),

                    borderSide: BorderSide(color: NowUIColors.blacknavi.withOpacity(0.5), width: 1.0, style: BorderStyle.solid),
                ),
                hintText: placeholder
            ),
        );
    }
}
