import 'package:flutter/material.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE8F0FE),
        // backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: const Color(0xfffFFEBD0),
          centerTitle: true,
          title: const Text("Notes"),
        ),
        floatingActionButton: FloatingActionButton(
            // shape: BeveledRectangleBorder(
            //     borderRadius: BorderRadius.only(topLeft: Radius.circular(10))),
            // child: Center(child: Text("Add Notes")
            // ),
            elevation: 8,
            autofocus: true,
            foregroundColor: Colors.purple,
            hoverColor: Colors.white,
            shape: const CircleBorder(),
            focusColor: Colors.amber,
            splashColor: Colors.red,
            clipBehavior: Clip.none,
            mouseCursor: MaterialStateMouseCursor.clickable,
            backgroundColor: Colors.green,
            onPressed: () {},
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ))),
      ),
    );
  }
}
