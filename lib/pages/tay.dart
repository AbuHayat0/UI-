import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Fast extends StatefulWidget {
  const Fast({super.key});

  @override
  State<Fast> createState() => _FastState();
}

class _FastState extends State<Fast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
                children: [Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height /1.33,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color(0xffF701DF),
                              Color(0xff84ADEA),
                            ]
                        )  ,
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height /1.33,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                      gradient: LinearGradient(
                      colors: [
                        Color(0xff84ADEA),
                        Color(0xffF701DF),

                          ]
                          )  ,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(80.r)),
                      ),
                    )
                  ],
                ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 3.96,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff84ADEA),
                            Color(0xffF701DF),

                          ]
                        )
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
                            ]
                        )  ,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(80.r)),
                      ),
                    ),
                  )
                ]
            ),

          ),
          Padding(
            padding:EdgeInsets.only(
              left: ScreenUtil().setWidth(19.w),
              right: ScreenUtil().setWidth(19.w),
              top: ScreenUtil().setHeight(100.h),
              bottom: ScreenUtil().setHeight(100.h),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.black12,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white,
                  width: 0.05.w,
                )
              ),

              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("SING UP")
                    
                  ],
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
}
