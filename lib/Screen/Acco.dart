import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../pages/sign_in.dart';

class AccountPage extends StatefulWidget {
  final String userEmail;
  final String userName;
  final Image profileImageUrl;

  const AccountPage({Key? key, required this.userEmail, required this.userName, required this.profileImageUrl,}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        centerTitle: true,
      ),
      body: Container(
        height: 400.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(50),
          boxShadow: [BoxShadow(
            color: Colors.white,
            blurRadius: 0.4,
            spreadRadius: 1
          )]
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: widget.profileImageUrl.image,
                ),
                SizedBox(height: 16),
                Text(
                  'NAME: ${widget.userName}!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Email: ${widget.userEmail}',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 400,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.lightBlueAccent.withOpacity(0.1),
                          child: AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            title: Text('Confirm Sign Out'),
                            content: Text('Are you sure you want to sign out?'),
                            actions: [
                              Padding(
                                padding: const EdgeInsets.only(right: 58.0),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(); // Close the alert dialog
                                  },
                                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                                  child: Text('Cancel', style: TextStyle(color: Colors.white),),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Sign_in()));
                                },
                                child: Text('Sign Out',style: TextStyle(color: Colors.green),),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: Text('Sign Out', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
