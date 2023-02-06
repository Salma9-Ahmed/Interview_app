import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:interview_app/widgets/card_widget.dart';
import 'package:interview_app/datasourse/tasks_datasourse.dart';

import '../widgets/slider_card.dart';
import '../widgets/scroll_card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<Map?>? taskData = cardDatasource.tasks;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F3F3),
      body: Column(
        children: [
          Container(
            color: Color(0xffF3F3F3),
            height: 422,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 57.5),
                  height: 386,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff042E2B),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hi, Habib 👋',
                                style: TextStyle(
                                    fontSize: 17.5,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                'Lets explore your notes',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white.withOpacity(0.7)),
                              ),
                            ],
                          ),
                          CircleAvatar(
                            backgroundColor: Color(0xff24966D),
                            radius: 25,
                            backgroundImage: AssetImage('assets/profile.png'),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 37.5,
                      ),
                      CardWidget(),
                      SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'All Tasks',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'See All',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white.withOpacity(0.7),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 334,
                    left: 15,
                    child: Container(
                      height: 91,
                      width: 420,
                      color: Colors.transparent,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: taskData?.length,
                        itemBuilder: (context, index) => SliderCard(
                          text1: "${taskData![index]!["text1"]}",
                          text2: "${taskData![index]!["text2"]}",
                          image: "${taskData![index]!["img"]}",
                        ),
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Reminder Task',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 12),
            child: Container(
              height: 396,
              width: double.infinity,
              color: Color(0xffF3F3F3),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => ScrollCard(),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 64,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/Home.png',
                  height: 20,
                  width: 19,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Home',
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/Search.png',
                  height: 20,
                  width: 19,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Search',
                    style: TextStyle(
                      color: Color(0xffB4C1C0),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/Video.png',
                  height: 20,
                  width: 19,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Record',
                    style: TextStyle(
                      color: Color(0xffB4C1C0),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/Save.png',
                  height: 20,
                  width: 19,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Saved',
                    style: TextStyle(
                      color: Color(0xffB4C1C0),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/Settings.png',
                  height: 20,
                  width: 19,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Settings',
                    style: TextStyle(color: Color(0xffB4C1C0)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
