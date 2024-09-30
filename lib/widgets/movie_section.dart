import 'package:flutter/material.dart';
import 'package:movie_app/screens/captain_a_screen.dart';
import 'package:movie_app/screens/doctor_strange_screen.dart';
import 'package:movie_app/screens/iron_man_screen.dart';
import 'package:movie_app/screens/thor_screen.dart';


class MovieSection extends StatelessWidget {

  List names = [
    "Captain America",
    "Thor",
    "Doctor Strange",
    "Iron man",
  ];

  List images = [
    "images/captain america.png",
    "images/thor.png",
    "images/doctor strange.png",
    "images/iron man.png",
  ];

  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 500,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: (){
                        if(index==0){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CaptainAScreen()));
                        }
                        if(index==1){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ThorScreen()));
                        }
                        if(index==2){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorStrangeScreen()));
                        }
                        if(index==3){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>IronManScreen()));
                        }
                      },
                      child: Container(
                        height: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(images[index]),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 20,),
                                Text('PnG-15', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
                                SizedBox(width: 60,),
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.amber,),
                                    SizedBox(width: 5,),
                                    Text('4.5', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 16)),
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: Text('Action', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
                                ),
                              ],
                            ),
                            Text(names[index], style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

              );
            },
          ),
        ),
      ],
    );
  }
}
