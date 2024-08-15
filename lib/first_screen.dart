import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ntrc_book/class/calss_six.dart';
import 'package:ntrc_book/class/class_eight.dart';
import 'package:ntrc_book/class/class_nine.dart';
import 'package:ntrc_book/class/class_seven.dart';
import 'package:ntrc_book/custom/custom_tab.dart';



import 'screen/bookpage.dart';

class FristScreen extends StatelessWidget {
  const FristScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.cyan,
        //backgroundColor: Color(0xfffFFEBD0),
          appBar: AppBar(forceMaterialTransparency: false,automaticallyImplyLeading:false,
         // backgroundColor: const Color(0xfffFFEBD0),
          //backgroundColor: const Color(0xfff45B5AA),
            backgroundColor: const Color(0xfff48B896),
            centerTitle: true,
            title: const Text("মাধ্যমিক পাঠ্যপুস্কত - ২০২৫",  style: TextStyle(color: Colors.white),),),
            body: Column( children: [Expanded( flex: 2,
                child: DefaultTabController( length: 5,
                    child: Column( children: [Material(
                            child: Container(height: 50,color: const Color(0xfff48B896),
                              child: Center(child: TabBar(
                                indicator: BoxDecoration( borderRadius: BorderRadius.circular(8),  color: Colors.white,),
                                  unselectedLabelColor: Colors.white,
                                  labelStyle: const TextStyle(color: Colors.black), dividerHeight: 0,
                                  padding:const EdgeInsets.only(top: 8, bottom: 8),
                                  tabs: const [
                                    Tab(child:CustomTabName(tabName: 'ষষ্ঠ',) ),
                                    Tab(child:CustomTabName(tabName: 'সপ্তম',) ),
                                    Tab(child:CustomTabName(tabName: 'অষ্টম',) ),
                                    Tab(child:CustomTabName(tabName: 'নবম',) ),
                                    Tab(child:CustomTabName(tabName: 'অন্যান',) ),
                                  ]),
                            ),),),
                        const Expanded(child: TabBarView(children: [ClsSixScreen(), ClsSevenScreen(),  ClsEigntScreen(),  ClsNineScreen(),  GridBookPage()]), )
                      ], ))),
          ],),

      );
  }
}
