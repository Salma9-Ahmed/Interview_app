import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SliderCard extends StatelessWidget {
  final String text1;
  final String text2;
  final String image;
  const SliderCard({
    Key? key,
    required this.text1,
    required this.text2,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //elevation: 1,
      child: Container(
        height: 91,
        width: 170,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: SvgPicture.asset(
                image,
                alignment: Alignment.topLeft,
                height: 32,
                width: 36,
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(left: 10, bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '$text1',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text('${text2}',
                        style: TextStyle(
                            fontSize: 10, color: Colors.black.withOpacity(.5))),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
