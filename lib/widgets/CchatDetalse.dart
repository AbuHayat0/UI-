import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_app/widgets/Send_item.dart';
import 'package:project_app/widgets/chat_dubble.dart';
import 'package:project_app/widgets/sms.dart';
import 'chat_app_bar.dart';


enum MessageType {

  Sender,
  Reciver,

}


class ChatDetails extends StatefulWidget {


  @override
  State<ChatDetails> createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  List<ChatMessage> chatMessage = [
    ChatMessage(message:"Hi", type: MessageType.Reciver),
    ChatMessage(message:"Hello", type: MessageType.Sender),
    ChatMessage(message:"What from are you?", type: MessageType.Reciver),
    ChatMessage(message:"I am from dhaka", type: MessageType.Sender),
  ];

  List<SendMenu> manuItem = [
    SendMenu(text: "Photo & videos", icon: Icons.image, color: Colors.amber),
    SendMenu(text: "Audio", icon: Icons.music_note_outlined, color: Colors.black),
    SendMenu(text: "Docoment", icon: Icons.insert_drive_file, color: Colors.orange),
    SendMenu(text: "Location", icon: Icons.location_off_sharp, color: Colors.lightBlue),
    SendMenu(text: "Contact", icon: Icons.person, color: Colors.lightBlue),
  ];

  void showModal(){
    showModalBottomSheet(
        context: context,
        builder: (context){
      return Container(
        height: MediaQuery.of(context).size.height/2,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            decoration:BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
            ) ,
            child: Column(
              children:<Widget> [
                Center(
                  child: Container(
                    height: 4,
                    width: 50,
                    color: Colors.white.withOpacity(0.8)
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: manuItem.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder:(context, index){
                      return Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: ListTile(
                          leading: (Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: manuItem[index].color.withOpacity(0.09)
                            ),
                            height: 40,
                            width: 40,
                            child: Icon(manuItem[index].icon,size: 20,color: manuItem[index].color,),
                          )),
                          title: Text(manuItem[index].text),
                        ),
                      ) ;
                    },
                )
              ],
            ) ,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatDetailPageAppBar(),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: chatMessage.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ChatBubble(
                  chatMessage : chatMessage[index]
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2,
                    color: Colors.black.withOpacity(.3),
                  )
                ],
              ),
              height: 80,
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      showModal();
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.add, color: Colors.white, size: 21
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 20, left: 11).w,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 12.0).w,
                          child: TextField(
                            cursorColor: Colors.blue,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Type message...",
                              hintStyle:
                              TextStyle(color: Colors.grey.shade500),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Icon(
                          Icons.send,
                          size: 23.sp,
                          color: Colors.blueGrey.withOpacity(0.4),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
