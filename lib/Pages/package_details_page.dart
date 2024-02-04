// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1/Pages/cart_page.dart';
import 'package:task1/constant/const.dart';

class PackageScreen extends StatefulWidget {
  const PackageScreen({super.key});

  @override
  State<PackageScreen> createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Package Details",
            style: GoogleFonts.sulphurPoint(
                fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [Icon(Icons.favorite_border), SizedBox(width: 10)],
      ),
      body: Column(
        children: [
          Container(
            width: 344,
            height: 356,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 300,
                  height: 250,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/act1.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text("⭐ ⭐ ⭐ ⭐ ⭐  4.9"),
                Text(
                  "Abhigyna Makeovers",
                  style: GoogleFonts.sulphurPoint(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Base Price",
                  style: GoogleFonts.sulphurPoint(
                      fontSize: 12, color: Color(0xFFAA9E9E)),
                ),
                Row(
                  children: [
                    Text(
                      '\u{20B9}${'2320/-'}',
                      style: GoogleFonts.sulphurPoint(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 180),
                      child: Text(
                        "With Tax",
                        style: GoogleFonts.sulphurPoint(
                            fontSize: 14, color: Color(0xFFAA9E9E)),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: 386,
              height: 188,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: GoogleFonts.sulphurPoint(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15),
                  Text(
                      "The Abhigyna makeovers were currently the popular makeovers in India. Our company will provide services to your doorstep.",
                      style: GoogleFonts.poppins(fontSize: 14),
                      textAlign: TextAlign.justify),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        height: 74,
                        width: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: packageIcon.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Column(
                                children: [
                                  Icon(packageIcon[index]),
                                  SizedBox(width: 10),
                                  Text(
                                    packageIconName[index],
                                    style:
                                        GoogleFonts.sulphurPoint(fontSize: 14),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(width: 50),
                      Container(
                        alignment: Alignment.topRight,
                        height: 50,
                        width: 70,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: Colors.black, width: 1)),
                              height: 30,
                              width: 70,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star_border_outlined),
                                  Text("4.9"),
                                ],
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              "5k+ ratings",
                              style: GoogleFonts.sulphurPoint(fontSize: 10),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: 350,
            height: 55,
            child: Row(
              children: [
                SizedBox(
                  width: 117,
                  height: 54,
                  child: Card(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/Offer.png"),
                            Text(" 50% off")
                          ],
                        ),
                        Text(
                          "use code FREE50",
                          style: GoogleFonts.dmSans(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 190,
                  height: 54,
                  child: Card(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/Offer.png"),
                            Text(" 60% off on Debit Card")
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            "No coupon Required",
                            style: GoogleFonts.dmSans(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
              width: 350,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => CartScreen());
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff0D2063)),
                child: Text(
                  "ADD TO CART",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold),
                ),
              ))
        ],
      ),
    );
  }
}
