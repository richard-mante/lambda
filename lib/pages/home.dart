import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lambda/components/category.dart';
import 'package:lambda/components/item.dart';
import 'package:lambda/components/resently_viewed.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Expanded(
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                //top welcome
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                            'Welcome, Jordan',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                         Text(
                            'We are glad you returned',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black38,
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.notifications,color: Colors.black),
                        const SizedBox(width: 15,),
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),

              //search field

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                padding: const  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green.shade50,
                ),
                child: const Row(
                  children: [
                    Icon(Icons.search_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Search here',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black38,
                          fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //Categories List
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const[
                    Category(icon: Icons.event_seat, name: 'Catering'),
                    Category(icon: Icons.card_giftcard_outlined, name: 'Catering'),
                    Category(icon: Icons.no_food_sharp, name: 'Catering'),
                    Category(icon: Icons.table_bar_sharp, name: 'Catering'),
                    Category(icon: Icons.airline_seat_flat_angled, name: 'Catering'),
                    Category(icon: Icons.event_seat, name: 'Catering'),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    RecentlyViewed(title: 'This is just a sample title',author: 'Fred Aquah',date: 'march,2023',level: 70,imgLink: 'images/img1.jpg'),
                    RecentlyViewed(title: 'This is just a sample title',author: 'Fred Aquah',date: 'march,2023',level: 70,imgLink: 'images/img2.jpg'),
                    RecentlyViewed(title: 'This is just a sample title',author: 'Fred Aquah',date: 'march,2023',level: 70,imgLink: 'images/img1.jpg'),
                    RecentlyViewed(title: 'This is just a sample title',author: 'Fred Aquah',date: 'march,2023',level: 70,imgLink: 'images/img2.jpg'),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //sample images
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: const Row(
                  children: [
                     PostItem(imgLink: 'images/img1.jpg'),
                    SizedBox(
                      width: 10,
                    ),
                     PostItem(imgLink: 'images/img1.jpg'),
                  ],
                ),
              )
            ],
          )
      ),

      //bottomnavigation
      bottomNavigationBar: BottomNavigationBar(items:  [
         BottomNavigationBarItem(
            icon: const Icon(Icons.home_filled, color: Colors.black),
            label: 'Home',activeIcon:  Icon(Icons.home_filled,color: Colors.green[700])),
    BottomNavigationBarItem(
            icon: const Icon(Icons.dashboard_rounded,color: Colors.black),
            label: 'Home',activeIcon:  Icon(Icons.dashboard_rounded,color: Colors.green[700])),
    BottomNavigationBarItem(
            icon: const Icon(Icons.save,color: Colors.black),
            label: 'Home',activeIcon:  Icon(Icons.save,color: Colors.green[700])),
    BottomNavigationBarItem(
            icon: const Icon(Icons.person_rounded,color: Colors.black),
            label: 'Home',activeIcon:  Icon(Icons.person,color: Colors.green[700])),
      ],
      ),
    );
  }
}