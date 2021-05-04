import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/slide.dart';

class SlideItem extends StatelessWidget {
  final int index;

  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return
      Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            slideList[index].teamName,
            textAlign: TextAlign.center,

            style: GoogleFonts.pacifico(
                fontSize: 32,
                color: Colors.black,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 350,
            height: 460,
            child: Material(
              color: Color(0xFF86CEEB),
              elevation: 14,
              borderRadius: BorderRadius.circular(24.0),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(slideList[index].imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    slideList[index].name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    slideList[index].description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ]),
              ),
            ),
          )
        ],
      );
  }
}
