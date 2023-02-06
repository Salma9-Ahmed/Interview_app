import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          height: 139,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white.withOpacity(0.1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to TickTick Task',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Your one-stop app for task management. Simplify, track, and accomplish tasks with ease.',
                style: TextStyle(
                    fontSize: 12, color: Colors.white.withOpacity(0.7)),
              ),
              SizedBox(
                height: 21,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 31,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color(0xff24966D),
                      borderRadius: BorderRadius.circular(70),
                      border: Border.all(
                          width: 2, color: Colors.white.withOpacity(0.3))),
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                      Text(
                        'Watch Video',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          right: -10,
          bottom: -11,
          height: 75.3,
          width: 75.3,
          child: Image.asset('assets/banner.png'),
        )
      ],
    );
  }
}
