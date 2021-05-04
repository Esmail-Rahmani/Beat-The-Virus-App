import 'dart:async';

import 'package:flutter/material.dart';

import '../widgets/slide_item.dart';
import '../model/slide.dart';
import '../widgets/slide_dots.dart';

class Team extends StatefulWidget {
  @override
  _TeamState createState() => _TeamState();
}

class _TeamState extends State<Team> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < slideList.length) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(title: Text('BTV Team'), backgroundColor: Colors.blue[300]),
        body: Stack(// <-- STACK AS THE SCAFFOLD PARENT
            children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.blue[300],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(150),
                    bottomRight: Radius.circular(150))),
          ),
          Center(
            child: Scrollbar(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: <Widget>[
                          PageView.builder(
                            scrollDirection: Axis.horizontal,
                            controller: _pageController,
                            onPageChanged: _onPageChanged,
                            itemCount: slideList.length,
                            itemBuilder: (ctx, i) => SlideItem(i),
                          ),
                          Stack(
                            alignment: AlignmentDirectional.topStart,
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(bottom: 35),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    for (int i = 0; i < slideList.length; i++)
                                      if (i == _currentPage)
                                        SlideDots(true)
                                      else
                                        SlideDots(false)
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}
