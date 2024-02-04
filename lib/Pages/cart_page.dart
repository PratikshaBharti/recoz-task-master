// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Cart",
            style: GoogleFonts.sulphurPoint(
                fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 159,
              child: Column(
                children: [
                  SizedBox(
                    height: 19,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Text(
                          "Delivery Address",
                          style: GoogleFonts.sulphurPoint(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 180),
                        Icon(Icons.edit_outlined)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Image.asset("assets/images/Map.png"),
                          ),
                          SizedBox(
                            width: 167,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text("Marina, bhanu towers, 12/8AB",
                                      style: GoogleFonts.inter(
                                        fontSize: 15,
                                      ),
                                      textAlign: TextAlign.start),
                                ),
                                Text(
                                  "Chennai, India",
                                  style: GoogleFonts.sulphurPoint(
                                      fontSize: 12, color: Color(0xFFAA9E9E)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 110,
              child: Column(
                children: [
                  SizedBox(
                    height: 19,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Text(
                          "Payment Method",
                          style: GoogleFonts.sulphurPoint(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 180),
                        Icon(Icons.edit_outlined)
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Image.asset("assets/images/card.png"),
                          ),
                          SizedBox(
                            width: 167,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Credit Card",
                                  style: GoogleFonts.sulphurPoint(
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  "2188 4829 4721 8419",
                                  style: GoogleFonts.sulphurPoint(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 292,
                // color: Colors.amber,
                child: Column(children: [
                  SizedBox(
                    height: 19,
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "My Cart",
                      style: GoogleFonts.sulphurPoint(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 136,
                    child: Card(
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 107,
                            width: 107,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    "assets/images/act1.png",
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ),
                          SizedBox(width: 10),
                          SizedBox(
                            width: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Abhigyna Makeover",
                                  style: GoogleFonts.sulphurPoint(
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  "Face Care",
                                  style: GoogleFonts.sulphurPoint(
                                      fontSize: 12, color: Color(0xFFAA9E9E)),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '\u{20B9}${'2320/-'}',
                                      style: GoogleFonts.sulphurPoint(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 33),
                                    Container(
                                      height: 33,
                                      width: 99,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 247, 243, 243),
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              height: 25,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                child: Icon(
                                                  Icons.add,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                            Text("1"),
                                            SizedBox(
                                              height: 25,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                child: Icon(
                                                  Icons.remove,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 136,
                    child: Card(
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 107,
                            width: 107,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    "assets/images/modelpng.png",
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ),
                          SizedBox(width: 10),
                          SizedBox(
                            width: 203,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Makeup and styling makeovers",
                                  style: GoogleFonts.sulphurPoint(
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  "Body Care",
                                  style: GoogleFonts.sulphurPoint(
                                      fontSize: 12, color: Color(0xFFAA9E9E)),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '\u{20B9}${'2000/-'}',
                                      style: GoogleFonts.sulphurPoint(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 33),
                                    Container(
                                      height: 33,
                                      width: 99,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 247, 243, 243),
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              height: 25,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                child: Icon(
                                                  Icons.add,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                            Text("1"),
                                            SizedBox(
                                              height: 25,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                child: Icon(
                                                  Icons.remove,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ])),
          ),
          Container(
            height: 110,
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 246, 241, 235),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  SizedBox(
                    height: 57,
                    child: Card(
                        child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("Total:"),
                        ),
                        SizedBox(width: 200),
                        Row(
                          children: [
                            Text(
                              '\u{20B9}${'4320/-'}',
                              style: GoogleFonts.sulphurPoint(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    )),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                      width: 350,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {
                          // Get.to(() => CartScreen());
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF0D2063)),
                        child: Text(
                          "CHECKOUT",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
