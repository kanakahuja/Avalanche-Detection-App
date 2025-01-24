import 'package:flutter/material.dart';
import 'package:hackathon_project/theme/color.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Page2pdf extends StatelessWidget {
  const Page2pdf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text("Imp Points "),
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0,

      ),
      body: SfPdfViewer.asset('assets/wow.pdf'),
    );
  }
}
