import 'package:flutter/material.dart';
import 'package:flutter_application_2/container.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Figma design",
        home: Scaffold(
          appBar: AppBar(
              leadingWidth: 70,
              leading: Container(
                height: 44,
                width: 44,
                margin: EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                    color: Color(0xffEAEAEA),
                    borderRadius: BorderRadius.circular(40)),
                child: Icon(
                  Icons.menu,
                  size: 32,
                ),
              ),
              actions: [
                Container(
                    width: 55,
                    height: 55,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        color: Color(0xffEAEAEA),
                        borderRadius: BorderRadius.circular(30)),
                    child: const Icon(
                      Icons.notifications,
                      size: 32,
                    ))
              ]),
          body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              margin: EdgeInsets.only(top: 8, left: 16),
              child: const Text("Explore the World!",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 16),
              child: const Text(
                "Categories",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Container(
                  width: 56,
                  height: 36,
                  margin: EdgeInsets.only(left: 16, top: 8),
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                  decoration: BoxDecoration(
                      color: Color(0xff09453E),
                      borderRadius: BorderRadius.circular(35)),
                  child: const Center(
                      child: Text("All",
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: Colors.white, fontSize: 16)))),
              Container(
                  width: 116,
                  height: 36,
                  margin: EdgeInsets.only(left: 12, top: 8),
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffBEBEBE)),
                      borderRadius: BorderRadius.circular(35)),
                  child: Center(
                      child: Text("Mountain",
                          style: TextStyle(
                              color: Color(0xffBEBEBE), fontSize: 16)))),
              Container(
                  width: 88,
                  height: 36,
                  margin: EdgeInsets.only(left: 12, top: 8),
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffBEBEBE)),
                      borderRadius: BorderRadius.circular(35)),
                  child: const Center(
                      child: Text("Beach",
                          style: TextStyle(
                              color: Color(0xffBEBEBE), fontSize: 16)))),
              Container(
                  width: 88,
                  height: 36,
                  margin: EdgeInsets.only(left: 12, top: 8),
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffBEBEBE)),
                      borderRadius: BorderRadius.circular(35)),
                  child: const Center(
                      child: Text("Camp",
                          style: TextStyle(
                              color: Color(0xffBEBEBE), fontSize: 16))))
            ]),
            Row(
              children: [
                card(Color(0xffbacFAA5A5), "Lake Braise", "Italy"),
                card(Color(0xffACA5FA), "Santorini", "Greece"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 190,
                  margin: EdgeInsets.only(left: 18, top: 32),
                  child: Text(
                    "Explore more",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(right: 18, top: 30),
                    child: Text("See all",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff09453E)))),
              ],
            ),
            longCard(Color(0xff86E2FF), "Indonisia", "Bali"),
            longCard(Color(0xffD9D9D9), "Maldives", "Soneva Jani")
          ]),
        ));
  }
}
