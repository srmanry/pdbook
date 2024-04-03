import 'package:flutter/material.dart';
import 'package:ntrc_book/class/calss_six.dart';
import 'package:ntrc_book/class/class_eight.dart';
import 'package:ntrc_book/class/class_nine.dart';
import 'package:ntrc_book/class/class_seven.dart';
import 'package:ntrc_book/class/others.dart';

import 'screen/bookpage.dart';

class FristScreen extends StatelessWidget {
  const FristScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfffFFEBD0),
        appBar: AppBar(
          backgroundColor: Color(0xfffFFEBD0),
          centerTitle: true,
          title: const Text("NTRC Books - 2025"),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.note_add))
          ],
        ),
        body: Column(
          children: [
            Expanded(
                flex: 2,
                child: DefaultTabController(
                    length: 5,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Material(
                          child: Container(
                            height: 50,
                            color: Color(0xfffFFEBD0),
                            child: Center(
                              child: TabBar(
                                  indicator: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  // unselectedLabelStyle:
                                  //     TextStyle(color: Colors.red),
                                  unselectedLabelColor: Colors.black,
                                  // labelPadding: EdgeInsets.symmetric(
                                  //   vertical: 8,
                                  //   horizontal: 8,
                                  // ),
                                  dividerHeight: 0,
                                  //dividerColor: Colors.amber,
                                  padding:
                                      const EdgeInsets.only(top: 8, bottom: 8),
                                  //indicatorSize: TabBarIndicatorSize.label,
                                  // physics: const ClampingScrollPhysics(),
                                  // padding: const EdgeInsets.only(
                                  //     top: 10, left: 10, right: 10, bottom: 7),
                                  tabs: [
                                    Tab(
                                      child: Container(
                                        height: 35,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.white, width: 1),
                                        ),
                                        child: const Align(
                                          alignment: Alignment.center,
                                          child: Text("Six "),
                                        ),
                                      ),
                                    ),
                                    Tab(
                                      child: Container(
                                        height: 35,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Colors.white)),
                                        child: const Align(
                                          alignment: Alignment.center,
                                          child: Text("Seven"),
                                        ),
                                      ),
                                    ),
                                    Tab(
                                      child: Container(
                                        height: 35,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Colors.white)),
                                        child: const Align(
                                          alignment: Alignment.center,
                                          child: Text("Eight"),
                                        ),
                                      ),
                                    ),
                                    Tab(
                                      child: Container(
                                        height: 35,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Colors.white)),
                                        child: const Align(
                                          alignment: Alignment.center,
                                          child: Text("Nine"),
                                        ),
                                      ),
                                    ),
                                    Tab(
                                      child: Container(
                                        height: 35,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Colors.white)),
                                        child: const Align(
                                          alignment: Alignment.center,
                                          child: Text("Other"),
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: TabBarView(children: [
                            ClsSixScreen(),
                            ClsSevenScreen(),
                            ClsEigntScreen(),
                            ClsNineScreen(),
                            GridBookPage()
                            // OthersScreen()
                          ]),
                        )
                      ],
                    ))),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.note_add),
        ),
      ),
    );
  }
}
