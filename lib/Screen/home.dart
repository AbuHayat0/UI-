import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/badge.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_app/Screen/aluart.dart';
import 'package:project_app/widgets/catagory.dart';

import '../theme/Colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void showImage(BuildContext context, {required String imageName}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Image.asset(imageName),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
      appBar: getAppBar(),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      elevation: 0,
      title: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: bottomBarColor,
          boxShadow: [
            BoxShadow(
              color: shadowColor.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(1, 1),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sangvaleap",
                  style: TextStyle(
                    fontSize: 14,
                    color: labelColor,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 18,
                    color: CupertinoColors.label,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            Container(
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: appBarColor,
                    border: Border.all(color: Colors.grey)),
                child: Badge(
                    backgroundColor: primary,
                    child: Icon(Icons.notifications_none_outlined))),
          ],
        ),
      ),
    );
  }

  Widget buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 28.0, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            getCatagory(),

            SizedBox(
              height: 30.h,
            ),
            Text(
              'Featured',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 22,
              ),
            ),
            getFeatured(),
            SizedBox(
              height: 54.h,
            ),
            Text(
              'Recommended',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            getRecommended()
          ],
        ),
      ),
    );
  }

  Widget getRecommended() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: shadowColor,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(1, 1))
                  ]),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage("assets/imags/laptop.jpg"),
                                  fit: BoxFit.cover)),

                        ),
                        Positioned(
                          right: 15,
                          top: 180,
                          child: Container(
                            decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 5.0, bottom: 5, left: 15, right: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "New Prodact Coming",
                          style: TextStyle(
                            fontSize: 13.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: shadowColor,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(1, 1))
                  ]),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage("assets/imags/pic11.jpg"),
                                  fit: BoxFit.cover)),

                        ),
                        Positioned(
                          right: 15,
                          top: 180,
                          child: Container(
                            decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 5.0, bottom: 5, left: 15, right: 15),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 15,
                          top: 210,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Tranding This Prodact",
                          style: TextStyle(
                            fontSize: 13.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: shadowColor,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(1, 1))
                  ]),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage("assets/imags/pic13.jpg"),
                                  fit: BoxFit.cover)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "New",
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 15,
                          top: 180,
                          child: Container(
                            decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 5.0, bottom: 5, left: 15, right: 15),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 15,
                          top: 210,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Coming Prodact",
                          style: TextStyle(
                            fontSize: 13.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: shadowColor,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(1, 1))
                  ]),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage("assets/imags/pic14.jpg"),
                                  fit: BoxFit.cover)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "New",
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 15,
                          top: 180,
                          child: Container(
                            decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 5.0, bottom: 5, left: 15, right: 15),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 15,
                          top: 210,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "New Prodact",
                          style: TextStyle(
                            fontSize: 13.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
          ],
        ),
      ),
    );
  }

  Widget getFeatured() {
    return CarouselSlider(
      items: [
        Container(
          height: 270,
          width: double.infinity, // Set the width of the Container
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: shadowColor.withOpacity(0.3),
              ),
            ],
          ),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage("assets/imags/pic11.jpg"),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "New",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              Positioned(
                right: 15,
                top: 180,
                child: Container(
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 5.0, bottom: 5, left: 15, right: 15),
                    child: Text("\$9000"),
                  ),
                ),
              ),
              Positioned(
                right: 15,
                top: 210,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "prodract : Ink",
                      style: TextStyle(fontSize: 23),
                    ),
                  ),
                ),
              ),
              SeePic(parentContext : context, imag_name: "assets/imags/pic11.jpg",
              text:
              "Ink typically refers to a liquid or paste that contains pigments or dyes and is used for writing, drawing, or printing. In the context of writing and drawing, ink is often found in pens, markers, and other writing instruments. It is applied to surfaces such as paper or fabric to create text or images.In the context of printing, ink is a crucial component in various printing methods, including offset printing, flexography, and inkjet printing. Different types of ink are formulated for specific printing processes, ensuring optimal performance and quality.The composition of ink can vary, but it usually consists of pigments, dyes, or a combination of both, along with a liquid vehicle or carrier. The carrier is responsible for carrying the pigment or dye onto the surface and then evaporating or drying, leaving the color behind.In addition to traditional writing and printing inks, there are specialized inks used in other applications, such as tattoo ink for body art or industrial inks for coding and marking on products. The properties and characteristics of ink can vary widely depending on its intended use."
                ,)
            ],
          ),
        ),
        Container(
          height: 270,
          width: double.infinity, // Set the width of the Container
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: shadowColor.withOpacity(0.3),
              ),
            ],
          ),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage("assets/imags/pic12.jpg"),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "New",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              Positioned(
                right: 15,
                top: 180,
                child: Container(
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 5.0, bottom: 5, left: 15, right: 15),
                    child: Text("\$5000"),
                  ),
                ),
              ),
              Positioned(
                right: 15,
                top: 210,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Prodact : Flower",
                      style: TextStyle(fontSize: 26),
                    ),
                  ),
                ),
              ),
              SeePic(parentContext : context, imag_name: "assets/imags/pic12.jpg",
              text:
              "A  flower  is a reproductive structure found in plants, typically containing both male and female reproductive organs. Flowers play a crucial role in the process of plant reproduction. They are the means through which plants produce seeds, ensuring the continuation of their species" ,
              )
            ],
          ),
        ),
        Container(
          height: 270,
          width: double.infinity, // Set the width of the Container
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: shadowColor.withOpacity(0.3),
              ),
            ],
          ),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage("assets/imags/pic13.jpg"),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "New",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              Positioned(
                right: 15,
                top: 180,
                child: Container(
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 5.0, bottom: 5, left: 15, right: 15),
                    child: Text("\$3000"),
                  ),
                ),
              ),
              Positioned(
                right: 15,
                top: 210,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Prodact : Facewash",
                      style: TextStyle(fontSize: 23),
                    ),
                  ),
                ),
              ),
              SeePic(parentContext : context, imag_name: "assets/imags/pic13.jpg",
                text:
                "Facewash is a skincare product designed for cleaning the face. It is a facial cleanser specifically formulated to remove dirt, oil, makeup. For example, there are facewashes designed for oily skin, dry skin, sensitive skin, and acne-prone skin. Additionally, some facewashes may include specific ingredients like exfoliants, antioxidants, or moisturizers to address particular skincare needs Its essential to choose a facewash that suits your skin type and concerns to maintain a healthy and radiant complexion. Incorporating a facewash into your skincare routine, along with other skincare practices like moisturizing and sun protection, contributes to overall skin health."              )

            ],
          ),
        ),
        Container(
          height: 270,
          width: double.infinity, // Set the width of the Container
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: shadowColor.withOpacity(0.3),
              ),
            ],
          ),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage("assets/imags/pic14.jpg"),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "New",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              Positioned(
                right: 15,
                top: 180,
                child: Container(
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 5.0, bottom: 5, left: 15, right: 15),
                    child: Text("\$7000"),
                  ),
                ),
              ),
              Positioned(
                right: 15,
                top: 210,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Prodact:Mackup",
                      style: TextStyle(fontSize: 23),
                    ),
                  ),
                ),
              ),
              SeePic(parentContext : context, imag_name: "assets/imags/pic14.jpg",
                text:
                "Makeup refers to products and techniques applied to enhance one's appearance, typically involving the use of cosmetics. Makeup can include a variety of products such as foundation, concealer, eyeshadow, eyeliner, mascara, lipstick, and more. These products are applied to the face and sometimes other parts of the body to achieve different looks, enhance features, or express personal style."              )
            ],
          ),
        ),
        Container(
          height: 270,
          width: double.infinity, // Set the width of the Container
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: shadowColor.withOpacity(0.3),
              ),
            ],
          ),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage("assets/imags/pic18.jpg"),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "New",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              Positioned(
                right: 15,
                top: 180,
                child: Container(
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 5.0, bottom: 5, left: 15, right: 15),
                    child: Text("\$4000"),
                  ),
                ),
              ),
              Positioned(
                right: 15,
                top: 210,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Prodact:Electronis",
                      style: TextStyle(fontSize: 23),
                    ),
                  ),
                ),
              ),
              SeePic(parentContext : context, imag_name: "assets/imags/pic18.jpg",
                text:

                "It seems like there might be a small typo in your question. If you are asking about Electronics, it is a broad term that refers to the branch of physics and technology that deals with the behavior of electrons, particularly in semiconductors like transistors and diodes, and their use in electronic devices."              )
            ],
          ),
        ),
        Container(
          height: 270,
          width: double.infinity, // Set the width of the Container
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: shadowColor.withOpacity(0.3),
              ),
            ],
          ),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage("assets/imags/pic19.jpg"),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "New",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              Positioned(
                right: 15,
                top: 180,
                child: Container(
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 5.0, bottom: 5, left: 15, right: 15),
                    child: Text("\$8000"),
                  ),
                ),
              ),
              Positioned(
                right: 15,
                top: 210,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Prodact:  ",
                      style: TextStyle(fontSize: 23),
                    ),
                  ),
                ),
              ),
              SeePic(parentContext : context, imag_name: "assets/imags/pic19.jpg",
                text:
                "A  flower  is a reproductive structure found in plants, typically containing both male and female reproductive organs. Flowers play a crucial role in the process of plant reproduction. They are the means through which plants produce seeds, ensuring the continuation of their species" ,
              )
            ],
          ),
        ),

        // Add more Container widgets with images for additional slides
      ],
      options: CarouselOptions(
        enlargeCenterPage: true,
        disableCenter: true,
        height: 290,
      ),
    );
  }

  Widget getCatagory() {
    return SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(right: 55.0).w,
            child: Catagory(
              IconData: Icons.border_all_outlined,
              text: ("All"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 55.0).w,
            child: Catagory(
              IconData: Icons.code,
              text: ("Coding"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 55.0).w,
            child: Catagory(
              IconData: Icons.cast_for_education_outlined,
              text: ("Education"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 55.0).w,
            child: Catagory(
              IconData: Icons.account_circle_outlined,
              text: ("Home"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 55.0).w,
            child: Catagory(
              IconData: Icons.edit_outlined,
              text: ("Desing"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 55.0).w,
            child: Catagory(
              IconData: Icons.business_center_rounded,
              text: ("Busness"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 28.0).w,
            child: Catagory(
              IconData: Icons.list,
              text: ("About"),
            ),
          ),
        ]));
  }
}
