import 'package:flutter/material.dart';

import 'CchatDetalse.dart';

class ChatUserList extends StatefulWidget {
  String text;
  String secondaryText;
  String image;
  String time;

  ChatUserList({
    required this.text,
    required this.secondaryText,
    required this.image,
    required this.time,
  });

  @override
  _ChatUserListState createState() => _ChatUserListState();
}

class _ChatUserListState extends State<ChatUserList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0, left: 18),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (con)=> ChatDetails()));
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(widget.image),
                        maxRadius: 30,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.text, style: TextStyle(fontSize: 17),),
                            SizedBox(height: 6),
                            Text(widget.secondaryText),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 28.0),
                  child: Text(
                    widget.time,
                    style: TextStyle(
                        fontSize: 11,
                        color:
                             Colors.grey.shade400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
