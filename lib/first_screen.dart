import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ntrc_book/class/calss_six.dart';
import 'package:ntrc_book/class/class_eight.dart';
import 'package:ntrc_book/class/class_nine.dart';
import 'package:ntrc_book/class/class_seven.dart';
import 'package:ntrc_book/class/others.dart';

import 'note/note_page.dart';
import 'screen/bookpage.dart';

class FristScreen extends StatelessWidget {
  const FristScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(backgroundColor: Colors.cyan,
        //backgroundColor: Color(0xfffFFEBD0),
          appBar: AppBar(forceMaterialTransparency: false,
         // backgroundColor: const Color(0xfffFFEBD0),
          backgroundColor: const Color(0xfff96B846), centerTitle: true,
          title: const Text(  "মাধ্যমিক পাঠ্যপুস্কত - ২০২৫",  style: TextStyle(color: Colors.white),),

          actions: [ IconButton( onPressed: () { Get.to(const NoteScreen()); },  icon: const Icon(Icons.note_add))],),
        body: Column( children: [Expanded( flex: 2,
                child: DefaultTabController( length: 5,
                    child: Column( children: [Material(
                            child: Container(height: 50,color: const Color(0xfffFFEBD0),
                            child: Center(child: TabBar(
                                  indicator: BoxDecoration( borderRadius: BorderRadius.circular(10),  color: Colors.white),
                                  // unselectedLabelStyle:
                                  //     TextStyle(color: Colors.red),
                                  unselectedLabelColor: Colors.black,
                                  // labelPadding: EdgeInsets.symmetric(
                                  //   vertical: 8,
                                  //   horizontal: 8,
                                  // ),
                                  dividerHeight: 0,
                                  //dividerColor: Colors.amber,
                                  padding:const EdgeInsets.only(top: 8, bottom: 8),
                                  //indicatorSize: TabBarIndicatorSize.label,
                                  // physics: const ClampingScrollPhysics(),
                                  // padding: const EdgeInsets.only(
                                  //     top: 10, left: 10, right: 10, bottom: 7),
                                  tabs: [
                                  Tab(child: Container( height: 35, decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),
                                  border: Border.all(   color: Colors.white, width: 1),),
                                  child: const Align( alignment: Alignment.center, child:Text("ষষ্ঠ"), ), ), ),

                                    Tab(child: Container(height: 35,decoration: BoxDecoration( borderRadius:BorderRadius.circular(10),
                                    border: Border.all(  color: Colors.white)),
                                    child: const Align( alignment: Alignment.center, child:Text("সপ্তম"),  ),), ),

                                    Tab( child: Container(height: 35,decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10), border: Border.all( color: Colors.white)),
                                        child: const Align(  alignment: Alignment.center,child:Text("অষ্টম"),), ),
                                    ),
                                    Tab( child: Container( height: 35,
                                            decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),
                                            border: Border.all( color: Colors.white)),
                                            child: const Align( alignment: Alignment.center,  child:Text("নবম"), ),),
                                    ),
                                    Tab(child: Container( height: 35,  decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border: Border.all( color: Colors.white)),
                                            child: const Align( alignment: Alignment.center, child: Text("অন্যান"),),
                                      ),
                                    ),
                                  ]),
                            ),),),
                        const Expanded(child: TabBarView(children: [ClsSixScreen(), ClsSevenScreen(),  ClsEigntScreen(),  ClsNineScreen(),  GridBookPage()]), )
                      ], ))),
          ],),

      ),
    );
  }
}
