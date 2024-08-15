import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ntrc_book/class/pdf_view.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ClsSixScreen extends StatefulWidget {
  const ClsSixScreen({super.key});

  @override
  State<ClsSixScreen> createState() => _ClsSixScreenState();
}

class _ClsSixScreenState extends State<ClsSixScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color(0xffE8F0FE),
      body: Padding(padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
        child: Column(children: [
            const Center( child: Text("ষষ্ঠ শ্রেণীর সকল বই সমূহ"),),
            Expanded(child: ListView.builder(
                    itemCount: 15,
                    itemBuilder: (_, index) {
                      return Padding( padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                        child: Container(height: 50, decoration: BoxDecoration( borderRadius: BorderRadius.circular(8), color: Colors.white),
                          child:  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row( children: [
                                Image(image: AssetImage("assets/images/B.png", ), height: 45, fit: BoxFit.cover, ),
                                SizedBox( width: 10,), Text("Book Name"), ], ),
                               Padding( padding: const EdgeInsets.all(8.0),
                                // child: InkWell(onTap: (){
                                //   //SfPdfViewer.asset('assets/sixenglish.pdf');
                                // },
                                   // child: const Text('পডুন',style: TextStyle( color: Colors.green,fontSize: 14,fontWeight: FontWeight.w600),)),),

                                 child:
                                 TextButton(onPressed: (){
                                   Get.to(const PdfViewScreen());
                              }, child:const Text('পডুন',style: TextStyle( color: Colors.green,fontSize: 14,fontWeight: FontWeight.w600),) ))
                            ],  ),
                        ),);
                    }))
          ],), ),
    );
  }
}
