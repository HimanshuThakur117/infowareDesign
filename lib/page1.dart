import 'dart:math';

import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  String selectedValue = "USA";

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
        child: Icon(
          Icons.arrow_drop_down,
          color: Colors.grey,
        ),
        value: "USA",
      ),
      DropdownMenuItem(child: Icon(Icons.apartment), value: "Canada"),
      DropdownMenuItem(child: Icon(Icons.apartment), value: "Brazil"),
      DropdownMenuItem(child: Icon(Icons.apartment), value: "England"),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Alex Julia",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () => null,
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            onPressed: () => null,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Transform.rotate(
                  angle: .07,
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[900],
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                " portfolio Value",
                                style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Text(
                                "\$ 15,136,32 ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                      height: 40,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.green[300],
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Deposit",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 40,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.blueGrey[900],
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: Colors.white,
                                        )),
                                    child: Center(
                                      child: Text(
                                        "Withdraw",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  height: 170,
                  width: 60,
                  right: 50,
                  bottom: 0,
                  child: FloatingActionButton(
                    isExtended: true,
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey[100],
                            child: Icon(
                              Icons.home,
                              color: Colors.black,
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey[100],
                            child: Icon(
                              Icons.tv,
                              color: Colors.black,
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey[100],
                            child: Icon(
                              Icons.cabin,
                              color: Colors.black,
                            ),
                          ),
                          Center(
                              child: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey,
                          ))
                        ],
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Watchlist",
                    style: TextStyle(
                      color: Colors.blueGrey[900],
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "see all",
                    style: TextStyle(
                      color: Colors.green[300],
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 160,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.grey)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Card(
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: Colors.grey[100],
                                      child: Icon(
                                        Icons.telegram_sharp,
                                        color: Colors.black,
                                      ),
                                    ),
                                    title: Text(
                                      "ADB",
                                      style: TextStyle(
                                        color: Colors.blueGrey[900],
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text(
                                      "Adobe Inc",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    trailing: Text(
                                      "5.33%",
                                      style: TextStyle(
                                        color: Colors.green[300],
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  elevation: 0,
                                  shadowColor: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Card(
                                  child: ListTile(
                                      title: Text(
                                        "33.49",
                                        style: TextStyle(
                                          color: Colors.blueGrey[900],
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      subtitle: Text(
                                        "\$634.67",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      trailing: Icon(
                                        Icons.trending_up_outlined,
                                        size: 80,
                                      )),
                                  elevation: 0,
                                  shadowColor: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 160,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.grey)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Card(
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: Colors.grey[100],
                                      child: Icon(
                                        Icons.telegram_sharp,
                                        color: Colors.black,
                                      ),
                                    ),
                                    title: Text(
                                      "ADB",
                                      style: TextStyle(
                                        color: Colors.blueGrey[900],
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text(
                                      "Adobe Inc",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    trailing: Text(
                                      "5.33%",
                                      style: TextStyle(
                                        color: Colors.green[300],
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  elevation: 0,
                                  shadowColor: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Card(
                                  child: ListTile(
                                      title: Text(
                                        "33.49",
                                        style: TextStyle(
                                          color: Colors.blueGrey[900],
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      subtitle: Text(
                                        "\$634.67",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      trailing: Icon(
                                        Icons.trending_up_outlined,
                                        size: 80,
                                      )),
                                  elevation: 0,
                                  shadowColor: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Stock Availibility",
                    style: TextStyle(
                      color: Colors.blueGrey[900],
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Container(
                height: 70,
                width: 330,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.grey)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 40,
                          width: 80,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.grey[100],
                                child: Icon(
                                  Icons.telegram_sharp,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 10),
                                  child: Text(
                                    "NVDA",
                                    style: TextStyle(
                                      color: Colors.blueGrey[900],
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 10),
                                  child: Text(
                                    "25.94",
                                    style: TextStyle(
                                      color: Colors.green[300],
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 10),
                                  child: Text(
                                    "\$227.6",
                                    style: TextStyle(
                                      color: Colors.blueGrey[900],
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 60,
                            right: 10,
                            bottom: 10,
                          ),
                          child: Text(
                            "NViDiA",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                            bottom: 10,
                          ),
                          child: Text(
                            "0.14%",
                            style: TextStyle(
                              color: Colors.green[300],
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                            bottom: 10,
                          ),
                          child: Text(
                            "10 shares",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.blueGrey[900],
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Colors.grey,
              size: 30,
            ),
            label: '-',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pie_chart,
              color: Colors.grey,
              size: 30,
            ),
            label: '-',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.compare_arrows_sharp,
              color: Colors.grey,
              size: 30,
            ),
            label: '-',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.switch_right,
              color: Colors.grey,
              size: 30,
            ),
            label: '-',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
              size: 30,
            ),
            label: '-',
          ),
        ],
      ),
    );
  }
}
