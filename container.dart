import 'package:flutter/material.dart';

Widget card(Color co, String place, String cont) {
  return Container(
    width: 180,
    height: 225,
    margin: EdgeInsets.only(left: 18, top: 16),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: const [
        BoxShadow(
          blurRadius: 8,
          offset: Offset(0, 2),
          color: Color.fromARGB(90, 0, 0, 0),
        ),
      ],
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Container(
            width: 160,
            height: 162,
            margin: EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
              color: co,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 4, left: 12),
                  child: Text(
                    place,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Icon(
                        Icons.place,
                        color: Color(0xffBEBEBE),
                      ),
                    ),
                    Container(
                      child: Text(
                        cont,
                        style: TextStyle(color: Color(0xffBEBEBE)),
                      ),
                    )
                  ],
                ), // continue from here.
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  //margin: EdgeInsets.only(left: 16),
                  child: Text(
                    "4,7",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 12, 12, 12),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 8),
                  child: Icon(
                    Icons.star,
                    color: Color(0xffE3B81C),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget longCard(Color co, String cont, String place) {
  return Container(
    width: 400,
    height: 132,
    margin: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
    decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 6,
              offset: Offset(0, 2),
              color: Color.fromARGB(58, 25, 25, 25))
        ],
        borderRadius: BorderRadius.circular(16)),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
        width: 126,
        height: 108,
        margin: EdgeInsets.only(left: 8),
        decoration:
            BoxDecoration(color: co, borderRadius: BorderRadius.circular(8)),
      ),
      Container(
        margin: EdgeInsets.only(right: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
                margin: EdgeInsets.only(right: 8),
                child: Text(place,
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
            Row(
              children: [
                Text(
                  cont,
                  style: TextStyle(color: Color(0xff9F9F9F)),
                ),
                Icon(
                  Icons.place,
                  color: Color(0xff9F9F9F),
                ),
              ],
            ),
            star(),
          ],
        ),
      ),
    ]),
  );
}

Widget star() {
  return Row(
    children: [
      Icon(
        Icons.star,
        color: Color(0xffE3B81C),
      ),
      Icon(Icons.star, color: Color(0xffE3B81C)),
      Icon(Icons.star, color: Color(0xffE3B81C)),
      Icon(Icons.star, color: Color(0xffE3B81C)),
      Icon(Icons.star, color: Color(0xffBEBEBE)),
    ],
  );
}
