import 'package:flutter/material.dart';

class ClsSixScreen extends StatelessWidget {
  const ClsSixScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F0FE),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
        child: Column(
          children: [
            const Center(
              child:
            //  Text(" Class Six all books - 2025 "),
              Text("ষষ্ঠ শ্রেণীর সকল বই সমূহ"),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 15,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 3),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                      "assets/images/B.png",
                                    ),
                                    height: 45,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Book Name"),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'পডুন',
                                 // "Read",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 13, 43, 15)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
