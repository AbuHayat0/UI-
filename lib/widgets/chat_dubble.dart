import 'package:flutter/material.dart';
import 'package:project_app/widgets/CchatDetalse.dart';
import 'package:project_app/widgets/sms.dart';
class ChatBubble extends StatefulWidget {
  ChatMessage chatMessage;


  ChatBubble({required this.chatMessage});

  @override
  State<ChatBubble> createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {


  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(30),
      child: Align(
        alignment: (widget.chatMessage.type == MessageType.Reciver?Alignment.topLeft:Alignment.topRight),
        child: Container(
          decoration: BoxDecoration(
              color: (widget.chatMessage.type == MessageType.Reciver?Colors.black12:Colors.green.withOpacity(0.3)),
              borderRadius: BorderRadius.all(Radius.circular(30))
          ),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(widget.chatMessage.message, style: TextStyle(color: Colors.pink),),
          ),
      ),
      ),
    );
  }
}
