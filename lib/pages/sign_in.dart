
import 'package:project_app/Screen/home.dart';
import 'package:project_app/pages/Storage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:project_app/pages/Start.dart';

import '../Screen/navigation_var.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({Key? key}) : super(key: key);

  @override
  State<Sign_in> createState() => _SignUpState();
}

class _SignUpState extends State<Sign_in> {
  final _key = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final RegExp emailRegExp = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
  final RegExp passwordRegExp = RegExp(r'^[a-zA-Z0-9]{6}$');

  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.red.withOpacity(0.6),
                              Colors.blue.withOpacity(0.7),
                            ],
                          ),
                        ),
                      ),
                     /* Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff84ADEA),
                              Color(0xffF701DF),
                            ],
                          ),
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(80.r)),
                        ),
                      )
*/                    ],
                  ),
                 /* Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 3.96,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff84ADEA),
                            Color(0xffF701DF),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 3.96,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffF701DF),
                            Color(0xff84ADEA),
                          ],
                        ),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(80.r)),
                      ),
                    ),
                  ),*/
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: ScreenUtil().setWidth(19.w),
                right: ScreenUtil().setWidth(19.w),
                top: ScreenUtil().setHeight(70.h),
                bottom: ScreenUtil().setHeight(100.h),
              ),
              child: Container(
                height: 450,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white,
                    width: 0.05.w,
                  ),
                ),
                child: Form(
                  key: _key,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 28.0, left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            controller: emailController,
                            validator: (value) {
                              if (value!.isEmpty || !emailRegExp.hasMatch(value)) {
                                return 'Enter a valid email address';
                              }
                            },
                            decoration: InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(),
                              hintText: 'Enter your Email',
                            ),
                          ),
                          SizedBox(height: 16.0),
                          TextFormField(
                            controller: passwordController,
                            validator: (value) {
                              if (value!.isEmpty || !passwordRegExp.hasMatch(value)) {
                                return 'Enter a valid 6-digit alphanumeric password';
                              }
                            },
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter your password',
                              border: OutlineInputBorder(),
                              suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    passwordVisible = !passwordVisible;
                                  });
                                },
                                child: Icon(passwordVisible ? Icons.remove_red_eye : Icons.remove_red_eye_outlined),
                              ),
                            ),
                            obscureText: passwordVisible,
                          ),
                          SizedBox(height: 16.0),
                          ElevatedButton(
                            onPressed: () {
                              if (_key.currentState!.validate()) {
                                Storage.setLoginData(true);
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Navigation_bar()));


                              }
                            },
                            child: Text('Sign in'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
