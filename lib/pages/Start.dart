import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_app/pages/sign_in.dart';
import 'package:project_app/pages/sign_up.dart';


class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff881736), Color(0xff241659)])),
        child: Column(
          children: [
            SizedBox(height: 100.h,),
            Icon(
              Icons.production_quantity_limits,
              color: Colors.white,
              size: 30.dm,
            ),
            Text("HELLO FRIENDS \n     WELCOME", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp, color: Colors.white),),
            SizedBox(height: 100.h,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Sign_in()));
              },
              child: Container(
                height: 50.h,
                width: 270.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(color: Colors.white)
                ),
                child: Center(
                  child: Text("SIGN IN", style: TextStyle(
                      color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.sp,

                  ),),
                ),
              ),
            ),
            SizedBox(height: 24.h,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
              },
              child: Container(
                height: 50.h,
                width: 270.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(color: Colors.black)
                ),
                child: Center(
                  child: Text("SIGN UP", style: TextStyle(
                    color: Colors.black,
                    backgroundColor: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp,

                  ),),
                ),
              ),
            ),
            Spacer(),



            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: IconButton(
                    onPressed: (){
                    },
                    icon: Icon(Icons.facebook, size: 20.dg, color: Colors.white54,),
                  ),
                ),
                SizedBox(width: 1.w,),
                Container(
                  child: IconButton(
                    onPressed: (){
                    },
                    icon: Icon(Icons.favorite, size: 20.dg, color: Colors.white54,),
                  ),
                ),
                SizedBox(width: 1.w,),

                Container(
                  child: IconButton(
                    onPressed: (){
                    },
                    icon: Icon(Icons.tiktok, size: 20.dg, color: Colors.white54,),
                  ),
                ),

              ],
            ),
            SizedBox(height: 10.h,),
            Text("Login with Social Media",
              style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 14.sp,
              ),

            ),
            SizedBox(height: 10.h,),
          ],
        ),
      ),
    );
  }
}
