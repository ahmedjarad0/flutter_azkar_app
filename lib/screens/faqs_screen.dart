import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class FaqsScreen extends StatefulWidget {
  FaqsScreen({this.message= 'No Message', Key? key}) : super(key: key);
   String message;

  @override
  State<FaqsScreen> createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQS'),
        centerTitle: true,
      ),
      body: Center(
         child: Text(widget.message ,style: GoogleFonts.cairo(
           fontSize: 26,
           color: Colors.black,
           fontWeight: FontWeight.bold,
         ),),
      ),
    );
  }
}
