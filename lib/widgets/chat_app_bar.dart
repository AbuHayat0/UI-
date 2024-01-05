import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatDetailPageAppBar extends StatelessWidget implements PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      flexibleSpace: SafeArea(
        child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Colors.black
            )
          ]
        ),
          padding: EdgeInsets.only(right: 16,),

          child: Row(
            children: [
              IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back, color: Colors.black87,)
              ),
              SizedBox(width: 12,),
              CircleAvatar(
                backgroundImage:AssetImage("assets/imags/laptop.jpg"),
                maxRadius: 24,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Rasel", style: TextStyle(fontWeight: FontWeight.w600,),),
                      SizedBox(height: 6,),
                      Text("Online", style: TextStyle(color: Colors.green,fontSize: 12),),
                    ],
                  ),
                ),
              ),
              Icon(Icons.more_vert_rounded, color: Colors.grey.shade500,)
            ],
          ),
        ),
      ),

    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

}