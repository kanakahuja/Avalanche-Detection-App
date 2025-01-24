import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackathon_project/Pages/page2temp.dart';
import 'package:hackathon_project/theme/color.dart';

import '../ytvideos/videodatamodel.dart';

class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);


  // Future<List<VideoDataModel>> readJsonData()async{
  //   final jsonData = await rootBundle.loadString('json/videolist.json');
  //   final list = json.decode(jsonData);
  //
  //   // return list.map(list(e)list => VideoDataModel.fromJson(e));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Knowledge Section"),
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // ======================================================================================================
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Page2pdf(),));

                },
                child: Container(
                  height: 160,
                  decoration: BoxDecoration(
                  color: Colors.green[200],
                borderRadius: BorderRadius.circular(13)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.circleCheck,color: Colors.green,size: 50),
                        SizedBox(width: 20,),
                        Text("DO's",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w900),),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Page2pdf(),));
                },
                child: Container(
                  height: 160,
                  decoration: BoxDecoration(
                      color: Colors.red[200],
                      borderRadius: BorderRadius.circular(13)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.circleXmark,color: Colors.red,size: 50),
                        SizedBox(width: 20,),
                        Text("DONT's",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w900),),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),

// ==========================================================================================================================================

              // const Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 10),
              //   child: Text("Some videos for reference",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
              // ),
              // const SizedBox(height: 20,),
              // Expanded(child: Container(
              //   child: SingleChildScrollView(
              //     child: Column(
              //       children: [
              //         Padding(
              //           padding: const EdgeInsets.symmetric(vertical: 10),
              //           child: Container(
              //             height: 200,
              //             decoration: BoxDecoration(
              //               color: Colors.red,
              //               borderRadius: BorderRadius.circular(12)
              //
              //
              //             ),
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.symmetric(vertical: 10),
              //           child: Container(
              //             height: 200,
              //             decoration: BoxDecoration(
              //                 color: Colors.red,
              //                 borderRadius: BorderRadius.circular(12)
              //
              //
              //             ),
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.symmetric(vertical: 10),
              //           child: Container(
              //             height: 200,
              //             decoration: BoxDecoration(
              //                 color: Colors.red,
              //                 borderRadius: BorderRadius.circular(12)
              //
              //
              //             ),
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.symmetric(vertical: 10),
              //           child: Container(
              //             height: 200,
              //             decoration: BoxDecoration(
              //                 color: Colors.red,
              //                 borderRadius: BorderRadius.circular(12)
              //
              //
              //             ),
              //           ),
              //         ),
              //
              //
              //       ],
              //     ),
              //   ),
              // ))




            ],
          ),
        ),
      ),

      // body: SafeArea(
      //   child: SingleChildScrollView(
      //     child: Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      //       child: Column(
      //         children: [
      //           SizedBox(height: 30,),
      //           ExpansionTile(
      //
      //             collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      //             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      //             title: Text("DO's"),
      //             backgroundColor: Colors.green[200],
      //             collapsedBackgroundColor: Colors.green[200],
      //             children: [
      //               Text("data"),
      //               Text("data"),
      //               Text("data"),
      //               Text("data"),
      //               Text("data"),
      //               Text("data"),
      //               Text("data"),
      //               Text("data"),
      //
      //             ],
      //           ),
      //           SizedBox(height: 20,),ExpansionTile(
      //
      //             collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      //             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      //             title: Text("DONT's"),
      //             backgroundColor: Colors.red[200],
      //             collapsedBackgroundColor: Colors.red[200],
      //             children: [
      //               Text("data"),
      //               Text("data"),
      //               Text("data"),
      //               Text("data"),
      //               Text("data"),
      //               Text("data"),
      //               Text("data"),
      //               Text("data"),
      //
      //             ],
      //           ),
      //           SizedBox(height: 20,),
      //         ],
      //       ),
      //     ),
      //   ),
      // )
    );
  }
}
