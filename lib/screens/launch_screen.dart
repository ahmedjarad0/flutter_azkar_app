import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override

  State<LaunchScreen> createState() => _LaunchScreenState();
}


class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //TODO : Navigate to Home after 3 seconds
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/home_screen');
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:const BoxDecoration(
          gradient: LinearGradient(
              begin: AlignmentDirectional.topCenter,
              end: AlignmentDirectional.bottomCenter,
              colors: [
                Colors.blue,
                Colors.lightBlueAccent,
              ]),
        ),
          child: Text('تطبيق المسبحة',style: GoogleFonts.almarai(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
           alignment: Alignment.center,
      ),
    );
  }
}
