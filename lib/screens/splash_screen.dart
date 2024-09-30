import 'package:flutter/material.dart';
import 'package:movie_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          SizedBox(height: 20,),
          Container(
              height: 750,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('images/deadpool.png',fit: BoxFit.cover,)),
          SizedBox(height: 20,),
          Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('images/marvel.png',fit: BoxFit.cover,)),
        ],
      ),

    );
  }
}
