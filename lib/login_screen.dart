import 'dart:convert';
import 'package:coffe_pelayan/constant.dart';
import 'package:coffe_pelayan/table_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatelessWidget {
  final username = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/homs.png'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: mSigninKotak),
            padding: EdgeInsets.all(15),
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Column(
                      children: [
                        TextField(
                          controller: username,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.account_circle_outlined),
                              labelText: 'Username',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 4,
                                  ),
                                  borderRadius: BorderRadius.circular(36)),
                              hintText: 'Username'),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                          controller: password,
                          obscureText: true,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.remove_red_eye_outlined),
                              labelText: 'password',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 4,
                                    color: mTitleTextColor,
                                  ),
                                  borderRadius: BorderRadius.circular(36)),
                              hintText: 'Password'),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        ElevatedButton(
                          style: TextButton.styleFrom(
                            backgroundColor: mSigninButton,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(36),
                            ),
                          ),
                          onPressed: () async {
                            final url = Uri.parse(
                                "https://kopipas.policyservices.site/api/auth/login");
                            final Response = await http.post(url, body: {
                              'username': username.text,
                              'password': password.text,
                            });
                            var data = json.decode(Response.body);
                            if (data['status']) {
                              var token = data['body']['token'];
                              SharedPreferences sp =
                                  await SharedPreferences.getInstance();

                              sp.setString('token', token);

                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return HomeWidget();
                              }));
                            } else {
                              print(data);
                            }
                          },
                          child: Container(
                            width: 200,
                            height: 45,
                            child: Center(
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                  letterSpacing: 1,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
