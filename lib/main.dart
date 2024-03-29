import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const d_green = Color(0xFF54D3C2);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: true,
        title: "Hotels booking",
        home: Scaffold(
          appBar: MyAppBar(),
          body: SingleChildScrollView(
              child: Column(
            children: [SearchSection(), HotelsSection()],
          )),
        ));
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => new Size.fromHeight(50);

  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.grey[800],
          size: 20,
        ),
        onPressed: null,
      ),
      title: Text(
        "Explore",
        style: GoogleFonts.nunito(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w800),
      ),
      backgroundColor: Colors.white,
      actions: [
        IconButton(
          icon: Icon(
            Icons.favorite_outline_rounded,
            color: Colors.grey[800],
            size: 20,
          ),
          onPressed: null,
        ),
        IconButton(
          icon: Icon(
            Icons.place,
            color: Colors.grey[800],
            size: 20,
          ),
          onPressed: null,
        ),
      ],
      centerTitle: true,
    );
  }
}

class SearchSection extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.grey[200],
      padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                padding: EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 4,
                          offset: Offset(0, 3))
                    ]),
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Abidjan",
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none),
                ),
              )),
              SizedBox(width: 10),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          offset: Offset(0, 4))
                    ]),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.search, size: 26),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    shape: CircleBorder(),
                    primary: d_green,
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Choose date',
                        style: GoogleFonts.nunito(
                            color: Colors.grey, fontSize: 15)),
                    Text('12 Dec - 22 Dec',
                        style: GoogleFonts.nunito(
                            color: Colors.black, fontSize: 17)),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Number of rooms',
                        style: GoogleFonts.nunito(
                            color: Colors.grey, fontSize: 15)),
                    Text('1 Room - 2 Adults',
                        style: GoogleFonts.nunito(
                            color: Colors.black, fontSize: 17))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class HotelsSection extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "500 hotels found",
                  style: GoogleFonts.nunito(fontSize: 15, color: Colors.black),
                ),
                Row(
                  children: [
                    Text(
                      "Filters",
                      style:
                          GoogleFonts.nunito(fontSize: 15, color: Colors.black),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.filter_list_outlined,
                        color: d_green,
                        size: 25,
                      ),
                      onPressed: null,
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            height: 1000,
          )
        ],
      ),
    );
  }
}
