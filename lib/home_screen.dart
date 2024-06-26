import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screen/bookpage.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List ClassList = [
    "ষষ্ঠ শ্রেণী",
    "সপ্তম শ্রেণী",
    "অষ্টম শ্রেণী",
    "নবম শ্রেণী",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            "মাধ্যমিক পাঠ্যপুস্কত - ২০২৫",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("গণিতের সূত্র সমূহ"),
              const Text("পদার্থ বিজ্ঞানের সূত্র"),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("সকরারি ছুটির তালিকা - ২০২৫"),
                  Column(
                    children: [
                      Icon(Icons.note_alt_outlined),
                      Text('নোট'),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  "বাংলা ভার্সন",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                  height: 260,
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: ClassList.length,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 0),
                          child: InkWell(
                            onTap: () {
                              Get.to(() => GridBookPage());
                            },
                            child: Card(
                              color: Colors.amber,
                              child: ListTile(
                                title: Text(ClassList[index]),
                                trailing: Text("খুলুন"),
                              ),
                            ),
                          ),
                        );
                      })),
              const Center(
                child: Text(
                  "ইংরেজী ভার্সন",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Container(
                  height: 260,
                  //flex: 2,
                  child: ListView.builder(
                      itemCount: ClassList.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 0),
                          child: InkWell(
                            onTap: () {
                              Get.to(() => const GridBookPage());
                            },
                            child: Card(
                              color: Colors.amber,
                              child: ListTile(
                                title: Text(ClassList[index]),
                                trailing: const Text("খুলুন"),
                              ),
                            ),
                          ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
