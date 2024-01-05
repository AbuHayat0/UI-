

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme/Colors.dart';
import '../widgets/explore.dart';

class Explore extends StatefulWidget {
  Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {

  static List<Prodact> prodactList = [
    Prodact("HP", "Laptop", 90000),
    Prodact("Samsung", "Smartphone", 12000),
    Prodact("Sony", "Headphones", 5000),
    Prodact("Dell", "Laptop", 80000),
    Prodact("Apple", "iPhone", 100000),
    Prodact("Bose", "Speakers", 7000),
    Prodact("HP", "Laptop", 90000),
    Prodact("Lenovo", "Tablet", 30000),
    Prodact("LG", "TV", 60000),
    Prodact("Canon", "Camera", 35000),
    Prodact("Microsoft", "Surface", 95000),
    Prodact("Nokia", "Feature Phone", 5000),
    Prodact("Asus", "Gaming Laptop", 120000),
    Prodact("Google", "Pixel", 80000),
    Prodact("JBL", "Wireless Earbuds", 9000),
    Prodact("Acer", "Chromebook", 25000),
    Prodact("Xiaomi", "Fitness Tracker", 3000),
    Prodact("GoPro", "Action Camera", 40000),
    Prodact("Beats", "Wireless Headphones", 15000),
    Prodact("OnePlus", "Smartwatch", 20000),
    Prodact("Sony", "4K TV", 90000),
    Prodact("Fitbit", "Smart Band", 7000),
    Prodact("HP", "Printer", 8000),
    Prodact("Logitech", "Gaming Mouse", 5000),
    Prodact("Samsung", "Refrigerator", 70000),
    Prodact("Dell", "Desktop Computer", 60000),
    Prodact("Apple", "MacBook", 120000),
    Prodact("Bose", "Noise-Canceling Headphones", 25000),
  ];


  List<Prodact> dysply = [];

  @override
  void initState() {
    super.initState();
    dysply = List.from(prodactList);
  }

  void updateList(String value) {
    setState(() {
      dysply = prodactList
          .where((element) =>
          element.Prodact_Name!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Explore",
          style: TextStyle(color: Colors.grey, fontSize: 23.sp),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Container(
              padding: EdgeInsets.only(left: 12),
              height: 30,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                        color: shadowColor.withOpacity(0.1),
                        blurStyle: BlurStyle.solid,
                        spreadRadius: 0.5,
                        offset: Offset(1, 0),
                        blurRadius: 4)
                  ]),
              child: TextField(
                onChanged: updateList, // ইউজার ইনপুট পরিবর্তনের সাথে আপডেট করতে
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search Prodact",
                  prefixIcon: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: dysply.length,
              itemBuilder: (context, index) => Card(
                color: Colors.white.withOpacity(1),
                child: ListTile(
                  title: Text(
                    dysply[index].Prodact_Name!,
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  subtitle: Text(
                    dysply[index].prodact_Prize!.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                        fontSize: 13),
                  ),
                  trailing: Text(
                    dysply[index].prodact_Brand!,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

