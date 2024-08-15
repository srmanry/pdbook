import 'package:flutter/material.dart';
import 'package:ntrc_book/custom/style.dart';

class CustomTabName extends StatelessWidget {
  final String tabName;
  const CustomTabName({super.key, required this.tabName});

  @override
  Widget build(BuildContext context) {
    return Container(height: 35,decoration: BoxDecoration( borderRadius:BorderRadius.circular(10),
        border: Border.all(  color: Colors.white)),
      child:  Align( alignment: Alignment.center, child:Text(tabName,style: tabTextStyle,),  ));
  }
}
