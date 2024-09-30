import 'package:flutter/material.dart';

class CivilWar extends StatefulWidget {
  const CivilWar({super.key});

  @override
  State<CivilWar> createState() => _CivilWarState();
}

class _CivilWarState extends State<CivilWar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                child: Image.asset('images/captain 3.png',fit: BoxFit.cover,),
              ),
              Positioned(
                  top: 50,
                  left: 20,
                  child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back,color: Colors.white,size: 30,))),
              Positioned(
                  right: 20,
                  top: 50,
                  child: Icon(Icons.favorite,color: Colors.red,size: 30,)),
              Positioned(
                bottom: 0,
                left: 170,
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.orange,
                            blurRadius: 20
                        ),
                      ],
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(child: Icon(Icons.play_arrow,color: Colors.white,size: 50,)),
                ),
              ),
            ],
          ),
          SizedBox(height: 50,),
          Row(
            children: [
              SizedBox(width: 40,),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade700,
                          blurRadius: 5
                      )
                    ],
                    color: Color(0xFF1D1D28),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey.shade800)
                ),
                child: Icon(Icons.add,size: 35,color: Colors.white,),
              ),
              SizedBox(width: 30,),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade700,
                          blurRadius: 5
                      )
                    ],
                    color: Color(0xFF1D1D28),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey.shade800)
                ),
                child: Icon(Icons.favorite_border,size: 35,color: Colors.white,),
              ),
              SizedBox(width: 30,),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade700,
                          blurRadius: 5
                      )
                    ],
                    color: Color(0xFF1D1D28),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey.shade800)
                ),
                child: Icon(Icons.download,size: 35,color: Colors.white,),
              ),
              SizedBox(width: 30,),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade700,
                          blurRadius: 5
                      )
                    ],
                    color: Color(0xFF1D1D28),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey.shade800)
                ),
                child: Icon(Icons.share_outlined,size: 35,color: Colors.white,),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 20),
            child: Row(
              children: [
                Text("Civil War",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 23),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child: Text('Lorem the skie seis voew ewfwf ssflwfe sfslfwo sflsfwio slsfwo flfwfw '
                ' ffjwfo wffwof wfofwif sfjslfslfw sofwfwfi fwfjwfwf lfsfowfjwo slfwofw'
                'sieriwe sfisafowaeo siffjoawf sfowaifjwf jfawijwfja ffwaofjwaofa',style: TextStyle(color: Colors.white),),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 20,),
              Text("Recommended",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Text('See all',style: TextStyle(color: Colors.orangeAccent,fontSize: 14,fontWeight: FontWeight.w500),)),
              )
            ],
          ),
          SizedBox(height: 20,),
          Container(
            height: 120,
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,ind){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('images/captain america.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                  );
                }
            ),
          )
        ],
      ),
    );
  }
}
