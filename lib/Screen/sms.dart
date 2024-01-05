import 'package:flutter/material.dart';
import 'package:project_app/widgets/chat_count.dart';

class sms extends StatefulWidget {
  const sms({super.key});

  @override
  State<sms> createState() => _smsState();
}

class _smsState extends State<sms> {
  List<ChatUserList> chat_list = [
    ChatUserList(
        text: "Jane Russel",
        secondaryText: "Awesome Setup",
        image: "assets/imags/pic1.jpg",
        time: "now"),
    ChatUserList(
        text: "Tamim",
        secondaryText: " Hello Bro",
        image: "assets/imags/pic2.jpg",
        time: "now"),
    ChatUserList(
        text: "Rakibul",
        secondaryText: "by",
        image: "assets/imags/pic3.jpg",
        time: "5 min ago"),
    ChatUserList(
        text: "Msum",
        secondaryText: "Ok",
        image: "assets/imags/pic4.jpg",
        time: "now"),
    ChatUserList(
        text: "Shakib",
        secondaryText: "Good",
        image: "assets/imags/pic5.jpg",
        time: "1h ago"),
    ChatUserList(
        text: "Toli",
        secondaryText: "How are you?",
        image: "assets/imags/pic6.jpg",
        time: "now"),
    ChatUserList(
        text: "Jane Russel",
        secondaryText: "Awesome Setup",
        image: "assets/imags/pic7.jpg",
        time: "now"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Chat",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 2.0, left: 8, right: 8, bottom: 2),
                    child: Container(
                      height: 30,
                      color: Colors.pink[50],
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.pink,
                            size: 20,
                          ),
                          Text(
                            "Nwe",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search..",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey.shade400,
                        size: 20,
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      contentPadding: EdgeInsets.all(8),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.grey.shade100,
                          ))),
                ),
              ),
            ),
            ListView.builder(
                itemCount: chat_list.length,
                shrinkWrap: true,
                itemBuilder: (context, number) {
                  return ChatUserList(
                    text: chat_list[number].text,
                    secondaryText: chat_list[number].secondaryText,
                    image: chat_list[number].image,
                    time: chat_list[number].time,
                  );
                })
          ],
        ),
      ),
    );
  }
}
