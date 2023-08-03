import 'package:flutter/material.dart';
import './../constants/theme.dart';
// import './../widgets/input.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _secureText = true;
  bool _checkboxValue = false;

  TextEditingController _confirmationpasswordController =
      TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(color: NowUIColors.blacknavi),
                ),
              ),
              Expanded(
                flex: 4,
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(color: NowUIColors.blacknavi),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: const Radius.circular(80.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  actions: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: GestureDetector(
                          onTap: () {
                            print("FOR SIGN UP");
                          },
                          child: Text("SIGN UP",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold))),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: SingleChildScrollView(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 30.0, horizontal: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Welcome Back",
                              style: TextStyle(
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold,
                                color: NowUIColors.blacknavi,
                              )),
                          SizedBox(
                            height: 08.0,
                          ),
                          Text("Continue in sign up !",
                              style: TextStyle(
                                fontSize: 18.0,
                                // fontWeight: FontWeight.bold,
                                color: NowUIColors.blacknavi.withOpacity(0.5),
                              )),
                          SizedBox(
                            height: 20.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Column(
                              children: [
                                TextField(
                                  controller: _nameController,
                                  decoration: InputDecoration(
                                    hintText: "Enter you name",
                                    hintStyle:
                                        TextStyle(color: NowUIColors.hintcolor),
                                    fillColor:
                                        NowUIColors.login.withOpacity(0.5),
                                    filled: true,
                                    border: InputBorder.none,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16),
                                TextField(
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                    hintText: "Enter you email",
                                    hintStyle:
                                        TextStyle(color: NowUIColors.hintcolor),
                                    // errorText: _passwordError,
                                    // labelStyle: TextStyle(
                                    //     fontSize: 18.0, color: Colors.red),
                                    fillColor:
                                        NowUIColors.login.withOpacity(0.5),
                                    filled: true,
                                    border: InputBorder.none,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16),
                                TextField(
                                  controller: _passwordController,
                                  decoration: InputDecoration(
                                    hintText: "Enter your password",
                                    hintStyle:
                                        TextStyle(color: NowUIColors.hintcolor),
                                    // labelStyle: TextStyle(
                                    //     fontSize: 18.0, color: Colors.black),
                                    fillColor:
                                        NowUIColors.login.withOpacity(0.5),
                                    filled: true,
                                    border: InputBorder.none,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    suffixIcon: IconButton(
                                        icon: Icon(_secureText
                                            ? Icons.remove_red_eye
                                            : Icons.security),
                                        onPressed: () {
                                          setState(() {
                                            _secureText = !_secureText;
                                          });
                                        }),
                                  ),
                                  obscureText: _secureText,
                                ),
                                SizedBox(height: 16),
                                TextField(
                                  controller: _confirmationpasswordController,
                                  decoration: InputDecoration(
                                    hintText:
                                        "Enter your Confirmation Password",
                                    hintStyle:
                                        TextStyle(color: NowUIColors.hintcolor),
                                    // labelStyle: TextStyle(
                                    //     fontSize: 18.0, color: Colors.black),
                                    fillColor:
                                        NowUIColors.login.withOpacity(0.5),
                                    filled: true,
                                    border: InputBorder.none,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    suffixIcon: IconButton(
                                        icon: Icon(_secureText
                                            ? Icons.remove_red_eye
                                            : Icons.security),
                                        onPressed: () {
                                          setState(() {
                                            _secureText = !_secureText;
                                          });
                                        }),
                                  ),
                                  obscureText: _secureText,
                                ),
                                SizedBox(height: 16),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 0,
                                    top: 0,
                                    bottom: 16,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Checkbox(
                                          activeColor: NowUIColors.orangenavi,
                                          onChanged: (bool newValue) {
                                            if (newValue != null) {
                                              setState(() {
                                                _checkboxValue = newValue;
                                              });
                                            }
                                          },
                                          value: _checkboxValue),
                                      Expanded(
                                            child: RichText(
                                                text: TextSpan(
                                                    text: 'By Signing up you agree to our ',
                                                    style: TextStyle(fontSize: 14, color: Colors.black),
                                                    children: const <TextSpan> [
                                                        TextSpan(text: 'terms & conditions ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                                                        TextSpan(text: 'and '),
                                                        TextSpan(text: 'privacy policy ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),

                                                    ],
                                                ),
                                            ),
                                          ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      print("email: " +
                                          _emailController.text +
                                          "password: " +
                                          _passwordController.text);
                                    },
                                    child: Text("Sign Up",
                                        style: TextStyle(fontSize: 22)),
                                    style: ElevatedButton.styleFrom(
                                      primary: NowUIColors.orangenavi,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30),
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Have an Account?",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                              color: NowUIColors.hintcolor)),
                                      SizedBox(width: 10),
                                      GestureDetector(
                                        onTap: () {
                                          print("Sign In");
                                          // Navigator.pushNamed(
                                          //     context, '/signuppage');
                                        },
                                        child: Text("Sign In",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: NowUIColors.orangenavi)),
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
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
