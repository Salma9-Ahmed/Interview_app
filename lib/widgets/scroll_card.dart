import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScrollCard extends StatelessWidget {
  const ScrollCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Container(
        height: 62,
        width: 330,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: SvgPicture.asset(
                'assets/todo1.svg',
                height: 40,
                width: 36,
                fit: BoxFit.fitWidth,
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Online Class Routine',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Text('Save Date: 10/12/2022',
                      style: TextStyle(
                          fontSize: 10, color: Colors.black.withOpacity(.5))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
