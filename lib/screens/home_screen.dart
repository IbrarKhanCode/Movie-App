import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/screens/captain_a_screen.dart';
import 'package:movie_app/screens/doctor_strange_screen.dart';
import 'package:movie_app/screens/iron_man_screen.dart';
import 'package:movie_app/screens/thor_screen.dart';
import 'package:movie_app/widgets/captain_a_section.dart';
import 'package:movie_app/widgets/iron_man_section.dart';
import 'package:movie_app/widgets/movie_section.dart';
import 'package:movie_app/widgets/thor_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text('Movies Streaming'),
        actions: [
          Padding(padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: ListView(
        children: [
          CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                height: 230,
                enlargeCenterPage: true,
                aspectRatio: 16/9,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            items: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CaptainAScreen()));
                },
                child: Hero(
                  tag: 'captain america',
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage("images/captain america.png"),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorStrangeScreen()));
                },
                child: Hero(
                  tag: 'doctor strange',
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage("images/doctor strange.png"),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>IronManScreen()));
                },
                child: Hero(
                  tag: 'iron man',
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage("images/iron man.png"),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ThorScreen()));
                },
                child: Hero(
                  tag: 'thor',
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage("images/thor.png"),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          DefaultTabController(
              length: 4,
              child: Column(
                children: [
                 Container(
                   height: 50,
                   child: TabBar(
                     indicatorSize: TabBarIndicatorSize.tab,
                       indicatorColor: Colors.amberAccent,
                       labelColor: Colors.amber,
                       dividerColor: Colors.transparent,
                       tabs: [
                         Tab(text: 'All',),
                         Tab(text: 'Captain A',),
                         Tab(text: 'Iron Man',),
                         Tab(text: 'Thor',),
                       ]
                   ),
                 ),
                  Container(
                    height: 500,
                    child: TabBarView(
                      children: [
                        MovieSection(),
                        CaptainASection(),
                        IronManSection(),
                        ThorSection(),
                      ],
                    ),
                  )
                ],
              ),
          ),

        ],
      ),
    );
  }
}
