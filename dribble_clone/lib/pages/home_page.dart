// ignore_for_file: prefer_const_constructors

import 'package:dribble_clone/util/emoticon_face.dart';
import 'package:dribble_clone/util/exercise_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    //greetings
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text('hi, driya ananta',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 8),
                            Text('11 Nov 2022',
                                style: TextStyle(color: Colors.blue[200])),
                          ],
                        ),
                        //notification
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.blue[600],
                                borderRadius: BorderRadius.circular(12)),
                            padding: EdgeInsets.all(12),
                            child:
                                Icon(Icons.notifications, color: Colors.white)),
                      ],
                    ),

                    SizedBox(height: 25),
                    //Search Bar
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12)),
                      padding: EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Colors.white),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Search', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),

                    SizedBox(height: 25),

                    // Bagaimana perasaanmu?

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Bagaimana perasaanmu?',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.more_horiz, color: Colors.white),
                      ],
                    ),

                    SizedBox(height: 25),

                    //4 column face
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //bad
                        Column(
                          children: [
                            EmoticonFace(emoticonFace: '????'),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Bad', style: TextStyle(color: Colors.white))
                          ],
                        ),

                        // fine
                        Column(
                          children: [
                            EmoticonFace(emoticonFace: '????'),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Fine', style: TextStyle(color: Colors.white))
                          ],
                        ),

                        //well
                        Column(
                          children: [
                            EmoticonFace(emoticonFace: '????'),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Well', style: TextStyle(color: Colors.white))
                          ],
                        ),

                        //excellent
                        Column(
                          children: [
                            EmoticonFace(emoticonFace: '????'),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Excellent',
                                style: TextStyle(color: Colors.white))
                          ],
                          //fine
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey[200],
                  child: Center(
                    child: Column(
                      //exercise heading

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Exercise',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            Icon(Icons.more_horiz),
                          ],
                        ),

                        SizedBox(height: 20),

                        //listview exercise
                        Expanded(
                          child: ListView(
                            children: [
                              ExerciseTile(
                                icon: Icons.favorite,
                                exerciseName: 'Speaking Skills',
                                numberOfExercises: 16,
                                color: Colors.orange,
                              ),
                              ExerciseTile(
                                icon: Icons.person,
                                exerciseName: 'Reading Skills',
                                numberOfExercises: 8,
                                color: Colors.blue,
                              ),
                              ExerciseTile(
                                icon: Icons.star,
                                exerciseName: 'Writing Skills',
                                numberOfExercises: 20,
                                color: Colors.pink,
                              ),
                              ExerciseTile(
                                icon: Icons.gradient,
                                exerciseName: 'Coding Skills',
                                numberOfExercises: 24,
                                color: Colors.purple,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
