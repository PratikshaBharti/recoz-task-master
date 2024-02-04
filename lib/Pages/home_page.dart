// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1/Pages/package_details_page.dart';
import 'package:task1/constant/const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff7f7f7),
        leading: Icon(Icons.menu),
        title: Center(
          child: Text(
            "Home",
            style: GoogleFonts.sulphurPoint(
                fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          CircleAvatar(
            child: Image.asset("assets/images/Ellipse.png"),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello",
                    style: GoogleFonts.sulphurPoint(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Welcome to Makeup hub",
                    style: GoogleFonts.sulphurPoint(
                        color: Color(0xffAA9E9E),
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  SizedBox(
                    height: 48,
                    width: 290,
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade200)),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 28,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade200)),
                          hintText: "Search",
                          hintStyle:
                              TextStyle(fontSize: 14, color: Colors.black)),
                    ),
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    child: Image.asset("assets/images/Icon-2.png"),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16,
                  width: double.infinity,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: catList.length,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 20, right: 25),
                          child: Text(
                            catList[index],
                            style: GoogleFonts.sulphurPoint(
                                color: catListColor[index],
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        );
                      }),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  width: 80,
                  child: Divider(
                    thickness: 2,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 220,
              width: double.infinity,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: catTitle.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => PackageScreen());
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 198,
                        height: 317,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Stack(
                                children: [
                                  SizedBox(
                                    width: 150,
                                    height: 120,
                                    child: Image.asset(
                                      imagepath[index],
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Positioned(
                                    left: 10,
                                    top: 15,
                                    child: Icon(
                                      Icons.favorite,
                                      color: iconColor[index],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: 198,
                              height: 70,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 121,
                                    height: 70,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(catTitle[index],
                                            style: GoogleFonts.sulphurPoint(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold)),
                                        Text(catPrice[index],
                                            style: GoogleFonts.sulphurPoint(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Align(
                                      alignment: Alignment.topRight,
                                      child: Text("⭐ 4.9")),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              // color: Colors.amber,
              width: MediaQuery.of(context).size.width,
              height: 304,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Popular Products",
                        style: GoogleFonts.sulphurPoint(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 168),
                        child: Text(
                          "See All",
                          style: GoogleFonts.sulphurPoint(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 280,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 2,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  // color: Colors.red,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 125,
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                children: [
                                  Image.asset(popImages[index]),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                              width: 160,
                                              child: Text(
                                                popTitle[index],
                                                style: GoogleFonts.sulphurPoint(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                          SizedBox(width: 20),
                                          Text(popRating[index])
                                        ],
                                      ),
                                      Text(
                                        popSubTitle[index],
                                        style: GoogleFonts.sulphurPoint(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                            color: Color(0xFFAA9E9E)),
                                      ),
                                      Text(
                                        '\u{20B9}${'2000/-'}',
                                        style: GoogleFonts.sulphurPoint(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 22,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'User',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: onItemTapped,
      ),
    );
  }

  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
