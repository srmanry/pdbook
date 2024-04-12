import 'package:flutter/material.dart';

class GridBookPage extends StatelessWidget {
  const GridBookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(' অন্যান্য বই সমূহ '),
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5 / 1.7,
                    // mainAxisSpacing: 1,
                  ),
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.amber,
                        ),
                        child: Image.asset(
                          "assets/images/1.png",
                          fit: BoxFit.cover,
                        ),
                        //  height: 150,
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
