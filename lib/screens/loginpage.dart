import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/buttons.dart';
import '../widgets/specialbuttons.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController mobileTextController = TextEditingController();

  int flag = 1;

  void func () {
    if (flag == 0) {
      return print("OTP");
    } else if(flag==1){
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Container(
            height: 870,
            width: double.infinity,
            color: const Color(0xff2a246c),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 55,
                ),
                Text(
                  "T.",
                  style: TextStyle(color: Colors.white, fontSize: 100),
                ),
                Text(
                  "TRICKET",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )
              ],
            ),
          ), //Container with the logo
          Container(
            height: 600,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)),
                color: Colors.white),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: IconLoginButton(
                      icon: const Icon(FontAwesomeIcons.facebook),
                      colour: Colors.blue,
                      text: const Text("Continue with Facebook"),
                      onTap: () {
                        print("facebook");
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: IconLoginButton(
                      icon: const Icon(
                        FontAwesomeIcons.google,
                        color: Colors.blue,
                      ),
                      colour: Colors.white,
                      text: const Text(
                        "Login with Google",
                        style: TextStyle(color: Colors.black),
                      ),
                      onTap: () {
                        print("google");
                      },
                    ),
                  ),
                  Row(
                    children: const [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(22.0),
                          child: Divider(
                            color: Colors.black,
                            height: 50,
                          ),
                        ),
                      ),
                      Text("OR Login with"),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(22.0),
                          child: Divider(
                            color: Colors.black,
                            height: 50,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30),
                    child: TextFormField(

                      validator: (value) {
                        if (value.toString().length != 10) {
                          flag = 1;
                          return 'Mobile Number must be of 10 digit';
                        } else {
                          flag = 0;
                          return null;
                        }
                      },
                      controller: mobileTextController,
                      keyboardType: const TextInputType.numberWithOptions(),
                      decoration: InputDecoration(
                          labelText: "Mobile Number",
                          hintText: "Enter your 10 digit mobile number",
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(12.0),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ValueListenableBuilder<TextEditingValue>(
                      valueListenable: mobileTextController,
                      builder: (context, value, child){
                        return LoginButton(
                          text: const Text(
                            "Get OTP",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                          onTap: value.text.isNotEmpty ? (){print("otp");} : null,
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LoginButton(
                        text: const Text(
                          "Skip For Now",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Home()));
                        }),
                  )
                ],
              ),
            ),
          ), //Container with the Login Elements
        ],
      ),
    );
  }
}
